purpleconnnn


## How to add a page

To add pages, create ".md" files inside "site/".
You can just use regular HTML, but Vitepress doesn't allow that extension.

To add the page to the nav bar, open "site/.vitepress/theme.ts" and include it at the bottom.
Note that the nav bar will happily overflow if too many items are there, so we may have to adjust the mobile-detection breakpoint later.

## Layout and other changes

It's vaguely inside "site/layout" and friends, using Vue.

### Generating the talks page
In `_scripts`, add the CFP spreadsheet data as `csv` to `_scripts/cfp.csv`. Run `make_talks.py` (within `_scripts`) to regenerate `_scripts/talkdata.md`. This file is then included in `talks.md`.

### The insane library game

See: `site/public/library/README.md`.

The game lives in `site/public/library`. `purplecon.ink` is the "source code"/script of the game. To actually deploy changes to `purplecon.ink`, open it in, um [inky](https://github.com/inkle/inky), and hit File > "Export story.js only". Export the `story.js` to `purplecon.js`, to actually make your changes. (`purplecon.ink` is not shown to the viewer, only the rendered `purplecon.js` is.)

## Deploying
GitHub Actions will deploy whatever is in the repo, just git push baybee.

## Developing

```bash
$ pnpm install
$ node --run site:dev
```


## Implementation details
Uses [Vitepress](https://vitepress.dev/) in its MPA mode (so less JS).
