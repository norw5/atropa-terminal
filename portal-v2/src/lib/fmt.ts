export function fmtNum(v: number | null | undefined, digits = 2): string {
  if (v === null || v === undefined || Number.isNaN(v)) return '—';
  const abs = Math.abs(v);
  if (abs >= 1e15) return v.toExponential(2).replace('e+', 'e');
  if (abs >= 1e12) return (v / 1e12).toFixed(digits) + 'T';
  if (abs >= 1e9) return (v / 1e9).toFixed(digits) + 'B';
  if (abs >= 1e6) return (v / 1e6).toFixed(digits) + 'M';
  if (abs >= 1e3) return (v / 1e3).toFixed(digits) + 'k';
  if (abs >= 100) return v.toFixed(0);
  if (abs >= 1) return v.toFixed(2);
  if (abs === 0) return '0';
  return v.toPrecision(2);
}

export function fmtInt(v: number | string | null | undefined): string {
  if (v === null || v === undefined || v === '') return '—';
  const n = typeof v === 'string' ? Number(v) : v;
  if (!Number.isFinite(n)) return String(v);
  return n.toLocaleString('en-US', { maximumFractionDigits: 0 });
}

export function fmtDate(ts: number | null | undefined): string {
  if (!ts) return '—';
  return new Date(ts * 1000).toISOString().slice(0, 10);
}

export function short(a: string | null | undefined): string {
  if (!a) return '—';
  return a.slice(0, 8) + '…' + a.slice(-6);
}
