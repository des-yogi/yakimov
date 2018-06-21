$( document ).ready(function() {

  $('.team__slider').owlCarousel({
    center: true,
    items: 1,
    loop: true,
    margin: 48,
    // autoWidth: true,
    nav: true,
    dots: false,
    responsive:{
      768: {
        items: 2
      },
      1200: {
        items: 3
      }
    }
  });

});

// Изоляция без jQuery
// (function(){
//   // code
// }());

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
