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
  description: 'something about security',
  mpa: true,

  head: [['link', { rel: 'icon', href: './public/logo-64.png' }]],

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
    ],
  },
});
