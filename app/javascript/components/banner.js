import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails", "A website to get druuuunk !"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
