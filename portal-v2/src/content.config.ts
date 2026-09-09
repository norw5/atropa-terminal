import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';

const kbv2 = defineCollection({
  loader: glob({ pattern: '**/*.md', base: '../kb-v2' }),
});

export const collections = { kbv2 };
