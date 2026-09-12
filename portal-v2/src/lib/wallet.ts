import {
  Eip1193, CHAIN_ID_HEX, PULSE_PARAMS, chainName, formatUnits, shortAddr,
  getProvider, providerName,
} from './web3';

export type WalletStatus = 'disconnected' | 'connecting' | 'wrong-chain' | 'ready';

export type WalletState = {
  status: WalletStatus;
  provider: Eip1193 | null;
  walletName: string;
  address: string | null;
  chainId: string | null;
  chain: string | null;
  balance: string | null;
  error: string | null;
};

export type ReadyWallet = { provider: Eip1193; address: string };

export type WalletBar = {
  state(): WalletState;
  connect(silent?: boolean): Promise<void>;
  disconnect(): void;
  switchChain(): Promise<void>;
  readySend(): Promise<ReadyWallet>;
  onChange(cb: (s: WalletState) => void): () => void;
};

function isPulse(chainId: string | null): boolean {
  return !!chainId && chainId.toLowerCase() === CHAIN_ID_HEX;
}

export function mountWalletBar(root: HTMLElement): WalletBar {
  let st: WalletState = {
    status: 'disconnected', provider: null, walletName: 'injected wallet',
    address: null, chainId: null, chain: null, balance: null, error: null,
  };
  const subs: ((s: WalletState) => void)[] = [];
  let eventsBound = false;

  function set(patch: Partial<WalletState>) {
    st = { ...st, ...patch };
    render();
    for (const cb of subs) cb(st);
  }

  function esc(s: string): string {
    const d = document.createElement('div');
    d.textContent = s;
    return d.innerHTML;
  }

  function render() {
    if (st.status === 'ready') {
      const bal = st.balance !== null ? ` <span class="dim">${st.balance} PLS</span>` : '';
      root.innerHTML =
        `<span class="wb-chip ok" title="wallet is on ${esc(st.chain ?? '')} (chain id ${esc(st.chainId ?? '')})">` +
        `${esc(st.chain ?? 'PulseChain')} ✓</span>` +
        ` <span class="mono xs">${esc(shortAddr(st.address ?? ''))}</span>` +
        ` <button class="wb-copy mono xs" title="copy full address">copy</button>` +
        ` <a class="mono xs" href="https://ipfs.scan.pulsechain.com/address/${esc(st.address ?? '')}" target="_blank" rel="noopener noreferrer">explorer↗</a>` +
        bal + ` <span class="dim mono xs">via ${esc(st.walletName)}</span>`;
      const cp = root.querySelector('.wb-copy');
      cp?.addEventListener('click', async () => {
        try {
          await navigator.clipboard.writeText(st.address ?? '');
          (cp as HTMLElement).textContent = 'copied ✓';
          setTimeout(() => ((cp as HTMLElement).textContent = 'copy'), 1400);
        } catch {}
      });
      return;
    }
    if (st.status === 'wrong-chain') {
      root.innerHTML =
        `<span class="wb-chip bad" title="wallet is on the wrong chain (chain id ${esc(st.chainId ?? '')})">` +
        `${esc(st.chain ?? 'wrong chain')} ✗</span>` +
        ` <span class="mono xs">${esc(shortAddr(st.address ?? ''))}</span>` +
        ` <button class="pgbtn wb-switch">switch to PulseChain</button>` +
        ` <span class="dim mono xs">reads and sends are blocked until you switch</span>`;
      root.querySelector('.wb-switch')?.addEventListener('click', () => void switchChain());
      return;
    }
    if (st.status === 'connecting') {
      root.innerHTML = `<span class="dim mono xs">connecting${st.provider ? ' via ' + esc(providerName(st.provider)) : ''}…</span>`;
      return;
    }
    const hint = getProvider() ? ` — ${esc(providerName(getProvider()))} detected` : ' — install MetaMask or any EIP-1193 wallet';
    root.innerHTML =
      `<button class="pgbtn wb-connect">connect wallet</button>` +
      ` <span class="dim mono xs">not connected${st.error ? ` · <span style="color:var(--red)">${esc(st.error)}</span>` : ''}${hint}</span>`;
    root.querySelector('.wb-connect')?.addEventListener('click', () => void connect(false));
  }

  async function refreshBalance() {
    if (!st.provider || !st.address || !isPulse(st.chainId)) return;
    try {
      const hex: string = await st.provider.request({ method: 'eth_getBalance', params: [st.address, 'latest'] });
      set({ balance: formatUnits(BigInt(hex), 18).slice(0, 12) });
    } catch {}
  }

  async function recheckChain() {
    if (!st.provider || !st.address) return;
    const chainId: string = await st.provider.request({ method: 'eth_chainId' });
    set({ chainId, chain: chainName(chainId), status: isPulse(chainId) ? 'ready' : 'wrong-chain', balance: null });
    if (isPulse(chainId)) await refreshBalance();
  }

  function bindEvents(p: Eip1193) {
    if (eventsBound || typeof (p as any).on !== 'function') return;
    eventsBound = true;
    (p as any).on('accountsChanged', (accs: string[]) => {
      if (!accs?.length) {
        set({ status: 'disconnected', address: null, chainId: null, chain: null, balance: null, error: null });
        return;
      }
      set({ address: accs[0], error: null });
      void recheckChain();
    });
    (p as any).on('chainChanged', (chainId: string) => {
      set({ chainId, chain: chainName(chainId), status: isPulse(chainId) ? 'ready' : 'wrong-chain', balance: null });
      if (isPulse(chainId)) void refreshBalance();
    });
    (p as any).on('disconnect', () => {
      set({ status: 'disconnected', address: null, chainId: null, chain: null, balance: null });
    });
  }

  async function connect(silent: boolean): Promise<void> {
    const p = getProvider();
    if (!p) {
      set({ status: 'disconnected', error: 'no injected wallet found' });
      return;
    }
    set({ status: 'connecting', provider: p, walletName: providerName(p), error: null });
    try {
      const method = silent ? 'eth_accounts' : 'eth_requestAccounts';
      const accs: string[] = await p.request({ method });
      if (!accs?.length) {
        if (silent) { set({ status: 'disconnected' }); return; }
        throw new Error('no accounts returned');
      }
      bindEvents(p);
      set({ address: accs[0], error: null });
      await recheckChain();
      if (!silent && !isPulse(st.chainId)) {
        try {
          await switchChain();
        } catch {}
      }
    } catch (e: any) {
      set({ status: 'disconnected', error: e?.message ?? String(e) });
    }
  }

  function disconnect() {
    set({ status: 'disconnected', address: null, chainId: null, chain: null, balance: null, error: null });
  }

  async function switchChain(): Promise<void> {
    const p = st.provider ?? getProvider();
    if (!p) return;
    try {
      await p.request({ method: 'wallet_switchEthereumChain', params: [{ chainId: CHAIN_ID_HEX }] });
    } catch (e: any) {
      if (e?.code === 4902 || e?.data?.originalError?.code === 4902) {
        await p.request({ method: 'wallet_addEthereumChain', params: [PULSE_PARAMS] });
      } else {
        set({ error: e?.message ?? 'switch rejected' });
        throw e;
      }
    }
    await recheckChain();
  }

  async function readySend(): Promise<ReadyWallet> {
    if (st.status === 'disconnected' || st.status === 'connecting') await connect(false);
    if (!st.provider || !st.address) throw new Error('wallet not connected');
    const chainId: string = await st.provider.request({ method: 'eth_chainId' });
    if (!isPulse(chainId)) {
      try {
        await switchChain();
      } catch {
        throw new Error('wrong chain — switch to PulseChain in your wallet first (the chip above has the button)');
      }
      const again: string = await st.provider.request({ method: 'eth_chainId' });
      if (!isPulse(again)) throw new Error('wrong chain — switch to PulseChain in your wallet first (the chip above has the button)');
    }
    if (st.status !== 'ready' || !isPulse(st.chainId)) await recheckChain();
    return { provider: st.provider, address: st.address };
  }

  render();
  void connect(true);

  return {
    state: () => st,
    connect: (silent = false) => connect(silent),
    disconnect,
    switchChain,
    readySend,
    onChange(cb) {
      subs.push(cb);
      return () => {
        const i = subs.indexOf(cb);
        if (i >= 0) subs.splice(i, 1);
      };
    },
  };
}
