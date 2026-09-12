import {
  SEL, ethCall, decAddr, decUint, encCall, parseUnits, formatUnits,
  sendTx, waitTx, shortAddr, tokenMeta, decodeRevertData, replayRevert,
} from './web3';
import type { WalletBar } from './wallet';
import type { Flow } from './flow';

export const TBILL = '0x463413c579d29c26d59a65312657dfce30d545a1';
export const V3_STEP = 1111111111000000000000000000n;
export const EXPLORER = 'https://ipfs.scan.pulsechain.com';

export type MintTarget = {
  addr: string;
  name: string;
  symbol: string;
  decimals: number;
  gen: string;
  census: boolean;
  parent: string | null;
  parentDec: number;
  parentSym: string;
  hasMult: boolean;
  m0: bigint | null;
  step: bigint | null;
  mint0: bigint | null;
  liq?: string;
  cls?: string;
};

export async function readMultiplier(addr: string, amount: bigint): Promise<bigint | null> {
  try {
    return decUint(await ethCall(addr, encCall(SEL.Multiplier, [amount])));
  } catch {
    return null;
  }
}

export async function loadMintTarget(addr: string, row: any): Promise<MintTarget> {
  const a = addr.toLowerCase();
  let parent: string | null = null;
  try {
    parent = decAddr(await ethCall(a, SEL.Parent));
  } catch {
    parent = null;
  }
  if (!parent && row?.p) parent = row.p;
  let m0: bigint | null = null;
  let mint0: bigint | null = null;
  let pm = { decimals: 18, symbol: '', name: '' };
  if (parent) {
    [pm, m0] = await Promise.all([
      tokenMeta(parent),
      readMultiplier(a, 0n),
    ]);
    try {
      mint0 = decUint(await ethCall(a, SEL.Mint));
    } catch {
      mint0 = null;
    }
  }
  return {
    addr: a,
    name: row?.n ?? '',
    symbol: row?.s ?? '',
    decimals: (row?.d as number) ?? pm.decimals,
    gen: row?.v ?? '',
    census: !!row,
    parent,
    parentDec: pm.decimals,
    parentSym: pm.symbol || (parent ? shortAddr(parent) : 'TBILL'),
    hasMult: parent !== null && m0 !== null,
    m0,
    step: parent === null ? null : mint0 !== null ? mint0 : V3_STEP,
    mint0,
    liq: row?.liq ?? '',
    cls: row?.cls ?? '',
  };
}

export async function multiplierAt(t: MintTarget, amount: bigint): Promise<bigint> {
  if (!t.parent || !t.hasMult) return 1n;
  const m = await readMultiplier(t.addr, amount);
  return m ?? 1n;
}

export type MintReceipt = {
  ok: boolean;
  hash: string | null;
  amount: bigint;
  cost: bigint;
  paidAsset: string;
};

export async function runMint(o: {
  bar: WalletBar;
  flow: Flow;
  log: (s: string, cls?: string) => void;
  target: MintTarget;
  amount: bigint;
  onDone?: () => void;
}): Promise<MintReceipt> {
  const { bar, flow, log, target: t } = o;
  const amount = o.amount;
  const paidAsset = t.parent ?? TBILL;
  const paidLabel = t.parent ? t.parentSym : 'TBILL';
  const paidDec = t.parent ? t.parentDec : 18;
  const review = flow.step('review');
  const mult = await multiplierAt(t, amount);
  const cost = amount * mult;
  review.done(`mint ${formatUnits(amount, t.decimals)} ${t.symbol || shortAddr(t.addr)} — pay ${formatUnits(cost, paidDec)} ${paidLabel}${mult > 1n ? ` (${mult.toString()}× rate)` : ''}${t.parent ? '' : ' — V1 parity: 1:1 vs TBILL'}`);

  const res = await bar.readySend();
  const al = decUint(await ethCall(paidAsset, encCall(SEL.allowance, [res.address, t.addr])));
  const approve = flow.step(`approve ${paidLabel}`);
  if (al >= cost && cost > 0n) {
    approve.skip(`allowance ${formatUnits(al, paidDec)} already covers the cost`);
  } else {
    approve.active(`approving ${formatUnits(cost, paidDec)} ${paidLabel} to ${shortAddr(t.addr)} — confirm in your wallet`);
    const ah = await sendTx(res.provider, res.address, paidAsset, encCall(SEL.approve, [t.addr, cost]));
    log(`approve tx ${ah} — waiting…`);
    const ar = await waitTx(res.provider, ah);
    if (ar.status !== '0x1') {
      approve.error('approve reverted');
      throw new Error('approve reverted — aborting before the mint');
    }
    approve.done(`tx ${ah.slice(0, 10)}… confirmed — exact-amount approval (revoke any time by approving 0)`);
  }

  const sign = flow.step(t.parent ? `sign mint(${formatUnits(amount, t.decimals)})` : `sign mint(${formatUnits(amount, t.decimals)}) — V1 parity`);
  sign.active('confirm in your wallet');
  const data = encCall(SEL.mint, [amount]);
  const th = await sendTx(res.provider, res.address, t.addr, data);
  sign.active(`tx sent — waiting for receipt`);
  const r = await waitTx(res.provider, th);
  if (r.status === '0x1') {
    sign.done(`tx ${th.slice(0, 10)}… confirmed`);
    const rcpt = flow.step('receipt');
    rcpt.done(
      `minted <b>${formatUnits(amount, t.decimals)} ${t.symbol || ''}</b> to your wallet · paid ${formatUnits(cost, paidDec)} ${paidLabel} · ` +
      `<a href="${EXPLORER}/tx/${th}" target="_blank" rel="noopener noreferrer">tx ${th.slice(0, 12)}…↗</a>` +
      (t.census ? ` · <a href="/tokens/${t.addr}">entity page</a>` : ''),
    );
    log(`mint confirmed: ${th}`, 'ok');
    o.onDone?.();
    return { ok: true, hash: th, amount, cost, paidAsset: paidLabel };
  }
  const why = await replayRevert(res.address, t.addr, data, r.blockNumber);
  sign.error('mint() reverted onchain');
  const rcpt = flow.step('receipt');
  rcpt.error(why ? `decoded reason: ${why}` : 'common causes: parent allowance/balance, multiplier moved (someone minted first)');
  log(`mint reverted: ${th}`, 'err');
  return { ok: false, hash: th, amount, cost, paidAsset: paidLabel };
}

export function parseAmount(v: string, decimals: number): bigint | null {
  try {
    const n = parseUnits(v.trim() || '0', decimals);
    return n > 0n ? n : null;
  } catch {
    return null;
  }
}
