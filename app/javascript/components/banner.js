import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails!!", "Mix your own!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

