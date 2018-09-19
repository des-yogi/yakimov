$( document ).ready(function() {
  var langs = ['ua', 'en'];
  var pathArr = location.pathname.split('/');

  var langFromPath = pathArr[1] || '';

  var lang = langs.indexOf(langFromPath) === -1 ? 'ru' : langFromPath;

  var trans = {
        ua: {
            next: 'Далі',
            prev: 'Назад'
          },
          ru: {
            next: 'Вперед',
            prev: 'Назад'
          },
          en: {
            next: 'Next',
            prev: 'Prev'
          }
        };

  $('.team__slider').owlCarousel({
    center: true,
    items: 1,
    loop: true,
    margin: 45,
    stagePadding: 2,
    // autoWidth: true,
    nav: true,
    navText: [trans[lang].prev,trans[lang].next],
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
  var langWrapper = document.querySelector('.main-nav__lang-wrapper');
  var langLink = langWrapper.querySelector('.main-nav__lang-link');
  var isMobile = window.isMobile.any;

  if(langWrapper && isMobile) {
    langWrapper.addEventListener('click', function(event) {
      // event.currentTarget.stopPropagation();
      // event.stopPropagation();
      // event.preventDefault();
      langWrapper.classList.toggle('main-nav__lang-wrapper--open');
    }, true)
  } else if (langWrapper && !isMobile) {
      langWrapper.addEventListener('mouseover', function() {
        if (!langWrapper.classList.contains('main-nav__lang-wrapper--open')) {
          langWrapper.classList.add('main-nav__lang-wrapper--open');
        } else return;
      })

      langWrapper.addEventListener('mouseout', function() {
        if (langWrapper.classList.contains('main-nav__lang-wrapper--open')) {
          langWrapper.classList.remove('main-nav__lang-wrapper--open');
        } else return;
      })
  }

}());
