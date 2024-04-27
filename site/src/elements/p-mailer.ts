const placeholder = (...args: any[]) => {
  placeholder.q = [args];
};
placeholder.q = [] as any[];

// @ts-ignore
window.ml = placeholder;

let setupDone = false;

export class PurpleMailerElement extends HTMLElement {
  constructor() {
    super();

    if (!setupDone) {
      setupDone = true;
      const s = document.createElement('script');
      s.async = true;
      s.src = 'https://assets.mailerlite.com/js/universal.js';
      document.head.prepend(s);
    }

    // TODO(samthor): This doesn't really work in dev mode (SPA blah blah)
    // and maybe we can fix the mailer later

    // @ts-ignore
    window.ml('account', '915470');
  }
}

customElements.define('p-mailer', PurpleMailerElement);
