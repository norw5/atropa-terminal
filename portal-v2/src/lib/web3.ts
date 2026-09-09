export const CHAIN_ID = 369;
export const CHAIN_ID_HEX = '0x171';
export const READ_RPCS = ['https://rpc.pulsechain.com', 'https://rpc.pulsechainstats.com', 'https://rpc-pulsechain.g4mm4.io'];
export const MV_ADDRESS = '0xa1bee1dae9af77dac73aa0459ed63b4d93fc6d29';

export const SEL: Record<string, string> = {
  totalSupply: '0x18160ddd',
  balanceOf: '0x70a08231',
  allowance: '0xdd62ed3e',
  decimals: '0x313ce567',
  symbol: '0x95d89b41',
  name: '0x06fdde03',
  approve: '0x095ea7b3',
  transfer: '0xa9059cbb',
  Parent: '0xd3c8dd69',
  Creator: '0x18bee97e',
  Debenture: '0x3574a50b',
  Claim2: '0x47cee97c',
  Claim1: '0x7bb2b3c1',
  _hu: '0x94710cda',
  Multiplier: '0x5677abcc',
  Mint: '0x34c73884',
  mint: '0xa0712d68',
  publish: '0x075d4782',
  New4: '0x329859a1',
  New3: '0x192c7a9d',
  TreasuryTokens: '0x5f5c5585',
  Transfer: '0x4853ae1b',
  owner: '0x8da5cb5b',
  burn: '0x42966c68',
};

export type Eip1193 = {
  request(args: { method: string; params?: unknown[] }): Promise<any>;
};

let rpcIdx = 0;
export async function rpcCall(method: string, params: unknown[]): Promise<any> {
  let lastErr: any = null;
  for (let i = 0; i < READ_RPCS.length; i++) {
    const url = READ_RPCS[(rpcIdx + i) % READ_RPCS.length];
    try {
      const ctrl = new AbortController();
      const timer = setTimeout(() => ctrl.abort(), 9000);
      const res = await fetch(url, {
        method: 'POST',
        headers: { 'content-type': 'application/json' },
        body: JSON.stringify({ jsonrpc: '2.0', id: 1, method, params }),
        signal: ctrl.signal,
      });
      clearTimeout(timer);
      const j = await res.json();
      if (j.error) {
        const err = new Error(j.error.message || String(j.error));
        (err as any).data = (j.error as any).data;
        throw err;
      }
      rpcIdx = (rpcIdx + i) % READ_RPCS.length;
      return j.result;
    } catch (e) {
      lastErr = e;
    }
  }
  throw lastErr ?? new Error('all RPCs failed');
}

const padAddr = (a: string) => a.toLowerCase().replace(/^0x/, '').padStart(64, '0');
const padUint = (n: bigint) => n.toString(16).padStart(64, '0');

export function encCall(sel4: string, args: (string | bigint)[]): string {
  return '0x' + sel4.replace(/^0x/, '') + args.map((a) => (typeof a === 'string' ? padAddr(a) : padUint(a))).join('');
}

export async function ethCall(to: string, data: string): Promise<string> {
  return rpcCall('eth_call', [{ to, data }, 'latest']);
}

export async function ethCallAt(from: string, to: string, data: string, block: string): Promise<string> {
  return rpcCall('eth_call', [{ from, to, data }, block]);
}

const PANIC_CODES: Record<string, string> = {
  '0x1': 'assert failed',
  '0x11': 'arithmetic overflow/underflow',
  '0x12': 'division by zero',
  '0x21': 'invalid enum value',
  '0x22': 'bad array storage access',
  '0x31': 'pop on empty array',
  '0x32': 'array index out of bounds',
  '0x41': 'memory allocation too large',
  '0x51': 'call to uninitialized function',
};

export function decodeRevertData(data: unknown): string | null {
  let hex = '';
  if (typeof data === 'string') hex = data;
  else if (data && typeof data === 'object') {
    const d = (data as any).data ?? (data as any).error?.data ?? (data as any).originalError?.data;
    if (typeof d === 'string') hex = d;
    else if (d && typeof d.data === 'string') hex = d.data;
  }
  if (!hex.startsWith('0x')) return null;
  const h = hex.slice(2);
  if (h.length < 8) return null;
  const sel = h.slice(0, 8);
  const body = h.slice(8);
  try {
    if (sel === '08c379a0') {
      const s = decString('0x' + body);
      return s ? `revert: "${s}"` : 'revert (empty string)';
    }
    if (sel === '4e487b71' && body.length >= 64) {
      const code = '0x' + BigInt('0x' + body.slice(0, 64)).toString(16);
      return `panic(${code}): ${PANIC_CODES[code] ?? 'unknown'}`;
    }
  } catch {}
  return null;
}

export async function replayRevert(from: string, to: string, data: string, block: string): Promise<string | null> {
  try {
    await ethCallAt(from, to, data, block);
    return null;
  } catch (e: any) {
    const dec = decodeRevertData(e);
    if (dec) return dec;
    const m = String(e?.message ?? '');
    return /^execution reverted/i.test(m) ? null : m;
  }
}

export function decUint(hex: string): bigint {
  const h = hex.replace(/^0x/, '');
  return h.length ? BigInt('0x' + h) : 0n;
}
export function decBool(hex: string): boolean {
  return decUint(hex) !== 0n;
}
export function decAddr(hex: string): string | null {
  const h = hex.replace(/^0x/, '').slice(24);
  if (!h || /^0+$/.test(h)) return null;
  return '0x' + h;
}
export function decString(hex: string): string {
  const h = hex.replace(/^0x/, '');
  if (h.length < 128) return '';
  const off = Number(BigInt('0x' + h.slice(0, 64)));
  if (!Number.isFinite(off) || off < 32) return '';
  const o = off * 2;
  if (h.length < o + 64) return '';
  const len = Number(BigInt('0x' + h.slice(o, o + 64)));
  const bytes = h.slice(o + 64, o + 64 + len * 2);
  let s = '';
  for (let i = 0; i < bytes.length; i += 2) s += String.fromCharCode(parseInt(bytes.slice(i, i + 2), 16));
  try {
    return decodeURIComponent(escape(s));
  } catch {
    return s;
  }
}

export function parseUnits(v: string, decimals: number): bigint {
  const t = v.trim();
  if (!/^\d*(\.\d*)?$/.test(t) || t === '' || t === '.') throw new Error(`bad number: ${v}`);
  const [i, f = ''] = t.split('.');
  if (f.length > decimals) throw new Error(`too many decimals (max ${decimals})`);
  return BigInt(i || '0') * 10n ** BigInt(decimals) + BigInt((f + '0'.repeat(decimals - f.length)) || '0');
}

export function formatUnits(n: bigint, decimals: number): string {
  const neg = n < 0n;
  const a = neg ? -n : n;
  const base = 10n ** BigInt(decimals);
  const whole = a / base;
  const frac = (a % base).toString().padStart(decimals, '0').replace(/0+$/, '');
  return (neg ? '-' : '') + whole.toString() + (frac ? '.' + frac : '');
}

export function fmtBig(n: bigint, decimals: number, digits = 2): string {
  const f = Number(formatUnits(n, decimals));
  const abs = Math.abs(f);
  if (abs >= 1e12) return (f / 1e12).toFixed(digits) + 'T';
  if (abs >= 1e9) return (f / 1e9).toFixed(digits) + 'B';
  if (abs >= 1e6) return (f / 1e6).toFixed(digits) + 'M';
  if (abs >= 1e3) return (f / 1e3).toFixed(digits) + 'k';
  return formatUnits(n, decimals).slice(0, 20);
}

export function getProvider(): Eip1193 | null {
  const eth = (window as any).ethereum;
  if (!eth) return null;
  if (eth.providers?.length) {
    return eth.providers.find((p: any) => p.isMetaMask) ?? eth.providers[0];
  }
  return eth;
}

export async function connectWallet(): Promise<{ provider: Eip1193; address: string; chainId: string }> {
  const provider = getProvider();
  if (!provider) throw new Error('no injected wallet found (install MetaMask or any EIP-1193 wallet)');
  const accounts: string[] = await provider.request({ method: 'eth_requestAccounts' });
  if (!accounts?.length) throw new Error('no accounts returned');
  const chainId: string = await provider.request({ method: 'eth_chainId' });
  return { provider, address: accounts[0], chainId };
}

const PULSE_PARAMS = {
  chainId: CHAIN_ID_HEX,
  chainName: 'PulseChain',
  nativeCurrency: { name: 'PLS', symbol: 'PLS', decimals: 18 },
  rpcUrls: ['https://rpc.pulsechain.com'],
  blockExplorerUrls: ['https://ipfs.scan.pulsechain.com'],
};

export async function ensureChain(provider: Eip1193): Promise<void> {
  const chainId: string = await provider.request({ method: 'eth_chainId' });
  if (chainId.toLowerCase() === CHAIN_ID_HEX) return;
  try {
    await provider.request({ method: 'wallet_switchEthereumChain', params: [{ chainId: CHAIN_ID_HEX }] });
  } catch (e: any) {
    if (e?.code === 4902 || e?.data?.originalError?.code === 4902) {
      await provider.request({ method: 'wallet_addEthereumChain', params: [PULSE_PARAMS] });
    } else {
      throw e;
    }
  }
}

export async function sendTx(provider: Eip1193, from: string, to: string, data: string): Promise<string> {
  return provider.request({ method: 'eth_sendTransaction', params: [{ from, to, data, value: '0x0' }] });
}

export async function waitTx(provider: Eip1193, hash: string, onNote?: (s: string) => void): Promise<any> {
  for (let i = 0; ; i++) {
    if (onNote && i > 0 && i % 5 === 0) onNote(`waiting for receipt… (${i}s)`);
    const r = await provider.request({ method: 'eth_getTransactionReceipt', params: [hash] }).catch(() => null);
    if (r && r.blockNumber) return r;
    await new Promise((res) => setTimeout(res, 1000));
  }
}

export async function tokenMeta(addr: string): Promise<{ decimals: number; symbol: string; name: string }> {
  const [d, s, n] = await Promise.all([
    ethCall(addr, SEL.decimals).then(decUint).catch(() => 18n),
    ethCall(addr, SEL.symbol).then(decString).catch(() => ''),
    ethCall(addr, SEL.name).then(decString).catch(() => ''),
  ]);
  return { decimals: Number(d), symbol: s, name: n };
}

export function shortAddr(a: string): string {
  return a.slice(0, 10) + '…' + a.slice(-8);
}

const utf8Bytes = (s: string) => new TextEncoder().encode(s);
const word = (n: bigint) => n.toString(16).padStart(64, '0');
const wordBytes = (b: Uint8Array) => {
  const len = b.length;
  const padded = ((len + 31) >> 5) << 5;
  let hex = '';
  for (let i = 0; i < padded; i++) hex += (i < len ? b[i] : 0).toString(16).padStart(2, '0');
  return word(BigInt(len)) + hex;
};

const pad32 = (len: number) => BigInt((((len + 31) >> 5) << 5));

export function abiEncodeNew4(name: string, symbol: string, im: bigint, parent: string): string {
  const nb = utf8Bytes(name);
  const sb = utf8Bytes(symbol);
  const nameOff = 128n;
  const symOff = 160n + pad32(nb.length);
  return '0x' + SEL.New4.slice(2) + word(nameOff) + word(symOff) + word(im)
    + parent.toLowerCase().replace(/^0x/, '').padStart(64, '0')
    + wordBytes(nb) + wordBytes(sb);
}

export function abiEncodeNew3(name: string, symbol: string, im: bigint): string {
  const nb = utf8Bytes(name);
  const sb = utf8Bytes(symbol);
  const nameOff = 96n;
  const symOff = 128n + pad32(nb.length);
  return '0x' + SEL.New3.slice(2) + word(nameOff) + word(symOff) + word(im)
    + wordBytes(nb) + wordBytes(sb);
}
