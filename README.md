Purplecon.
Uses [Vitepress](https://vitepress.dev/) in its MPA mode (so less JS).

To develop:

```bash
$ pnpm install
$ node --run site:dev
```

To add pages, create ".md" files inside "site/".
You can just use regular HTML, but Vitepress doesn't allow that extension.

GitHub Actions will deploy whatever is in the repo.
