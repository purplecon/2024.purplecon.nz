import { defineConfigWithTheme } from 'vitepress';

type ThemeConfig = {
  nav: {
    title: string;
    href: string;
  }[];
};

/*
The site is built with VitePress, which has its config here:
  https://vitepress.dev/reference/site-config
*/

export default defineConfigWithTheme<ThemeConfig>({
  lang: 'en',
  title: 'purplecon',
  description: '👀',
  mpa: true,

  // this is in 'public', but it's copied to the top-level before release
  head: [['link', { rel: 'icon', href: './logo-64.png' }]],

  vue: {
    template: {
      compilerOptions: {
        isCustomElement: (tag) => {
          return tag.toLowerCase().includes('-');
        },
      },
    },
  },

  themeConfig: {
    nav: [
      {
        title: 'purplecon',
        href: '/',
      },
      {
        title: 'conduct',
        href: '/conduct',
      },
      {
        title: 'last time',
        href: 'https://2019.purplecon.nz',
      },
    ],
  },
});
