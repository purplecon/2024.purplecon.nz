import './elements/p-books.ts';
import './elements/p-mailer.ts';

// set random angle [-Math.PI,Math.PI)
document.body.style.setProperty('--random-dir', String((Math.random() - 0.5) * Math.PI * 2));