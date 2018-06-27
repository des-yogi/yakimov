$( document ).ready(function() {

  $('.team__slider').owlCarousel({
    center: true,
    items: 1,
    loop: true,
    margin: 45,
    stagePadding: 2,
    // autoWidth: true,
    nav: true,
    navText: ['Назад','Далі&ensp;'],
    dots: false,
    responsive:{
      768: {
        // center: false,
        items: 2
      },
      992: {
        center: false,
        items: 3
      },
      1200: {
        items: 3
      }
    }
  });

});

(function(){
  var menuBox = document.querySelector('.main-nav__inner');
  var burger = document.querySelector('.wrapper-menu');
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

(function(){
  var wrapperMenu = document.querySelector('.wrapper-menu');
  wrapperMenu.addEventListener('click', function(){
    wrapperMenu.classList.toggle('open');
  })
}());

(function(){
  var langWrapper = document.querySelector('.main-nav__lang');
  var langMenu = langWrapper.querySelector('.main-nav__lang-item');
  // var langItems = langMenu.querySelectorAll('.main-nav__lang-link');

  langWrapper.addEventListener('mouseover', function() {
    if (!langMenu.classList.contains('main-nav__lang-item--open')) {
      langMenu.classList.add('main-nav__lang-item--open');
    } else return;
  })

  langWrapper.addEventListener('mouseout', function() {
    if (langMenu.classList.contains('main-nav__lang-item--open')) {
      langMenu.classList.remove('main-nav__lang-item--open');
    } else return;
  })
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
