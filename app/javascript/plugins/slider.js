import '../custom_modules/custom-slick.js';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';

document.addEventListener("DOMContentLoaded",function(){
  $('#slider').slick({
  dots: true,
  infinite: true,
  speed: 1000,
  fade: true,
  cssEase: 'linear'
});
})
