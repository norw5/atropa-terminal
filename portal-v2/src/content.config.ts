import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';

const kbv2 = defineCollection({
  loader: glob({ pattern: ['**/*.md', '!dysnomia/**'], base: '../kb-v2' }),
});

const dys = defineCollection({
  loader: glob({ pattern: '**/*.md', base: '../kb-v2/dysnomia' }),
});

export const collections = { kbv2, dys };
