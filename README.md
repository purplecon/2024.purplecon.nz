Purplecon.
Uses [Vitepress](https://vitepress.dev/) in its MPA mode (so less JS).

To develop:

```bash
$ pnpm install
$ node --run site:dev
```

GitHub Actions will deploy whatever is in the repo.

## Add a page

To add pages, create ".md" files inside "site/".
You can just use regular HTML, but Vitepress doesn't allow that extension.

To add the page to the nav bar, open "site/.vitepress/theme.ts" and include it at the bottom.
Note that the nav bar will happily overflow if too many items are there, so we may have to adjust the mobile-detection breakpoint later.

## Layout and other changes

It's vaguely inside "site/layout" and friends, using Vue.
