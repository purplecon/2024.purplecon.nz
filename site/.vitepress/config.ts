import { defineConfigWithTheme } from 'vitepress';

type ThemeConfig = {
  nav: {
    title: string;
    href: string;
  }[];
};

interface HeadConfig {
  [key: string]: string | object | undefined;
}

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
  head: [
    ['script', { async: '', src: 'https://www.googletagmanager.com/gtag/js?id=G-B207RNWMGV' }],
    [
      'script',
      {},
      `window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'G-B207RNWMGV');`,
    ],
    ['link', { rel: 'icon', href: './logo-64.png' }],
  ],

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
        title: 'talks',
        href: '/talks',
      },
      {
        title: 'conduct',
        href: '/conduct',
      },
      {
        title: 'tickets',
        href: '/tickets',
      },
      {
        title: 'go inside?',
        href: '/library',
      },
      {
        title: '$ponsors',
        href: '/sponsors',
      },
      {
        title: 'merch',
        href: 'https://www.redbubble.com/i/t-shirt/purplecon-2024-the-shirt-by-purplecon/164335381.VL7OD',
      },
      {
        title: 'last time',
        href: 'https://2019.purplecon.nz',
      },
    ],
  },
});
