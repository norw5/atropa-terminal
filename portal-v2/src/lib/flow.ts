export type StepState = 'pending' | 'active' | 'done' | 'skip' | 'error';

export type StepHandle = {
  active(note?: string): void;
  done(note?: string): void;
  skip(note?: string): void;
  error(note?: string): void;
};

export type Flow = {
  step(label: string): StepHandle;
  note(text: string, cls?: 'dim' | 'err' | 'ok'): void;
  reset(): void;
  root: HTMLElement;
};

const GLYPH: Record<StepState, string> = {
  pending: '○',
  active: '▶',
  done: '✓',
  skip: '·',
  error: '✗',
};
const COLOR: Record<StepState, string> = {
  pending: 'var(--fg-faint)',
  active: 'var(--accent)',
  done: 'var(--accent)',
  skip: 'var(--fg-faint)',
  error: 'var(--red)',
};

export function createFlow(root: HTMLElement, title = 'flow'): Flow {
  const steps: { label: string; el: HTMLElement }[] = [];
  root.classList.add('flow');
  root.style.display = 'none';

  function render() {
    if (!steps.length) return;
    root.style.display = '';
    root.innerHTML = `<div class="flow-title mono xs dim">${title}</div>`;
    for (const s of steps) root.appendChild(s.el);
  }

  function mk(label: string): StepHandle {
    const el = document.createElement('div');
    el.className = 'flow-step mono xs';
    steps.push({ label, el });
    render();
    const set = (st: StepState, note?: string) => {
      el.innerHTML = `<span style="color:${COLOR[st]}">${GLYPH[st]}</span> ${label}${note ? ` <span class="dim">— ${note}</span>` : ''}`;
      el.dataset.state = st;
    };
    set('pending');
    return {
      active: (n) => set('active', n),
      done: (n) => set('done', n),
      skip: (n) => set('skip', n),
      error: (n) => set('error', n),
    };
  }

  return {
    step: mk,
    note(text, cls = 'dim') {
      const el = document.createElement('div');
      el.className = 'flow-step mono xs';
      el.innerHTML = `<span style="color:${cls === 'err' ? 'var(--red)' : cls === 'ok' ? 'var(--accent)' : 'var(--fg-faint)'}">·</span> ${text}`;
      steps.push({ label: text, el });
      render();
    },
    reset() {
      steps.length = 0;
      root.innerHTML = '';
      root.style.display = 'none';
    },
    root,
  };
}
