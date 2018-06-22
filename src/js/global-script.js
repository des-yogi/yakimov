$( document ).ready(function() {

  $('.team__slider').owlCarousel({
    center: true,
    items: 1,
    loop: true,
    margin: 45,
    // autoWidth: true,
    nav: true,
    dots: false,
    responsive:{
      768: {
        center: false,
        items: 2
      },
      1200: {
        items: 3
      }
    }
  });

});

(function(){
  var menuBox = document.querySelector('.main-nav__inner');
  var burger = document.querySelector('.burger');
  //var mainNavContainer = document.querySelector('.page-header__nav-wrapper');

  var burgerClickHandler = function (e) {
    if (menuBox && !menuBox.classList.contains('main-nav__inner--open')) {
      menuBox.classList.add('main-nav__inner--open');
      document.body.style.overflow = 'hidden';
      // mainNavContainer.style.backgroundColor = '#333';
    } else {
        menuBox.classList.remove('main-nav__inner--open');
        document.body.style.overflow = 'visible';
        // mainNavContainer.style.backgroundColor = 'transparent';
    }
  };

  burger.addEventListener('click', burgerClickHandler);
}());

// На проекте нет jQuery, но хочется $( document ).ready...
// function ready(fn) {
//   if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading"){
//     fn();
//   } else {
//     document.addEventListener('DOMContentLoaded', fn);
//   }
// }
//
// ready(function(){
//   // code
// });
