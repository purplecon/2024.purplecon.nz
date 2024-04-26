import { randomChoice, randomInt, randomRange, randomSizes } from './math.ts';

const gap = 2;
const emptySectionThreshold = 96;

export function renderBooks(canvas: HTMLCanvasElement) {
  const ctx = canvas.getContext('2d')!;

  const ranges = randomSizes(canvas.width, [16, 192, 256, 256, 384], 0.25);
  let at = 0;
  let lastWasStack = false;

  ctx.translate(0, canvas.height);

  const allZero = !ranges.some((r) => r > emptySectionThreshold);
  if (allZero) {
    ranges.splice(0, ranges.length, canvas.width);
  }

  for (const range of ranges) {
    ctx.save();

    if (range <= emptySectionThreshold) {
      // gap
    } else if (range < canvas.height && !lastWasStack) {
      lastWasStack = true;

      // book stack
      const useHeight = Math.floor(canvas.height * 0.5 + Math.random() * canvas.height * 0.5);
      const bookHeights = randomSizes(useHeight, [32], 0.4);

      ctx.rotate(-Math.PI / 2);

      let l = 0.0;
      let r = 1.0;

      for (const h of bookHeights) {
        l += randomRange(-0.05, +0.1);
        l = Math.max(0.0, l);

        r -= randomRange(-0.05, +0.1);
        r = Math.min(1.0, r);

        ctx.save();
        ctx.translate(0, l * range);

        renderBook(ctx, { w: h, h: (r - l) * range });
        ctx.restore();
        ctx.translate(h, 0);
      }
    } else {
      lastWasStack = false;

      // book l-r
      const bookWidths = randomSizes(range, [48], 0.2);
      ctx.scale(1, -1);

      for (const w of bookWidths) {
        const h = randomRange(canvas.height * 0.66, canvas.height);
        renderBook(ctx, { w, h });
        ctx.translate(w, 0);
      }
    }

    at += range;

    ctx.restore();
    ctx.translate(range, 0);
  }
}

const bookColors = [
  {
    book: '#d061bf',
    highlight: '#5bb4f9',
  },
  {
    book: '#7916de',
    highlight: '#d360b6',
  },
  {
    book: '#5eadf7',
    highlight: '#cc5bbf',
  },
  {
    book: '#a14196',
    highlight: '#db95d1',
  },
  {
    book: '#8641a1',
    highlight: '#e19bd5',
  },
];

let lastColor: (typeof bookColors)[0];

function renderBook(ctx: CanvasRenderingContext2D, size: { w: number; h: number }) {
  let choice: (typeof bookColors)[0];
  for (;;) {
    choice = randomChoice(bookColors)!;
    if (choice === lastColor) {
      continue;
    }
    lastColor = choice;
    break;
  }

  const w = size.w - gap;
  const h = size.h - gap;

  ctx.fillStyle = choice.book;
  ctx.fillRect(0, 0, w, h);

  ctx.fillStyle = choice.highlight;

  // must have at least one non-zero
  const choices = [0, 0];
  while (!choices.some((x) => x)) {
    choices[0] = randomInt(4);
    choices[1] = randomInt(4);
  }

  [-1, +1].forEach((dir, i) => {
    ctx.save();
    if (dir === -1) {
      ctx.translate(0, h);
      ctx.scale(1, -1);
    }

    ctx.translate(0, Math.floor(h * randomRange(0.05, 0.25)));

    const choice = randomInt(4);
    switch (choice) {
      case 1:
        ctx.fillRect(0, 0, w, 4);
        break;
      case 2:
        ctx.fillRect(0, 0, w, 4);
        ctx.fillRect(0, 8, w, 4);
        break;
      case 3:
        ctx.fillRect(4, 0, w - 8, 12);
    }

    ctx.restore();
  });
}
