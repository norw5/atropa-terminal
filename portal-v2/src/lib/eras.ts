export const ERA_COLORS: Record<string, string> = {
  'pre-fork': '#6b819e',
  'old-atropa': '#59a9f0',
  'pre-v1': '#7ee0e0',
  'v1': '#6cb2ff',
  'v2': '#59f0a2',
  'v3-bureau': '#ffc85c',
  'v4': '#d18cff',
  'post-crisis': '#ff6b6b',
  'long-tail': '#8ba0b9',
};

export const eraColor = (k: string): string => ERA_COLORS[k] ?? '#5c6d84';
