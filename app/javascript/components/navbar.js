const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.normal-navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= (window.innerHeight - 700)) {
        navbar.classList.add('normal-navbar-wagon-white');
      } else {
        navbar.classList.remove('normal-navbar-wagon-white');
      }
    });
  }
};


export { initUpdateNavbarOnScroll };
