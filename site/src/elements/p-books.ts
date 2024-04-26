import { renderBooks } from '../books.ts';

export class PurpleBooksElement extends HTMLElement {
  private refresh: () => void;

  constructor() {
    super();

    const root = this.attachShadow({ mode: 'open' });
    root.innerHTML = `
<style>
:host {
  display: flex;
}
canvas {
  display: block;
  width: 100%;
  height: 100%;
}
</style>
<canvas></canvas>
    `;

    const canvas = root.querySelector('canvas')!;

    this.refresh = () => {
      canvas.width = canvas.offsetWidth * 2;
      canvas.height = canvas.offsetHeight * 2;

      renderBooks(canvas);
    };

    const ro = new ResizeObserver(this.refresh);
    ro.observe(canvas);
  }
}

customElements.define('p-books', PurpleBooksElement);
