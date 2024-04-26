import './elements/p-books.ts';

// terrible untrusted mailerlite code
const hasMailerLite = document.querySelector('.ml-embedded');
if (hasMailerLite) {
  const s = document.createElement('script');
  s.async = true;
  s.src = 'https://assets.mailerlite.com/js/universal.js';
  document.head.prepend(s);

  const ml = () => {};
  ml.q = [['account', '915470']];

  // @ts-ignore
  window.ml = ml;
}
