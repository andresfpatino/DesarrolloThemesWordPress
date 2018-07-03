$ = jQuery.noConflict();

$(document).ready(function(){
  // Ocultar y mostrar menu
  $('.mobile-menu').on('click', function(){
    $('nav.menu-sitio').toggle('fast');
  });

  // Reaccionar a resize en la pantalla
  var breakpoint = 768;
  $(window).resize(function(){
    if($(document).width() >= breakpoint){
      $('nav.menu-sitio').show();
    }else{
      $('nav.menu-sitio').hide();
    }
  });
});

// Size logo sticky
window.onscroll = function(){stickyMenu()};
var headerHeight = $('#header').outerHeight();
function stickyMenu() {
  if (window.pageYOffset >= headerHeight) {
    $(".logotipo").css("width", "130px");
    $(".iconMenu-sticky").css("display", "block");
    $(".informacion-encabezado").css("display", "none");
  } else {
    $(".logotipo").css("width", "203px");
    $(".iconMenu-sticky").css("display", "none");
    $(".menu-sticky").css({'display':'none'});
    $(".informacion-encabezado").css("display", "block");
  }
}

// Show sticky menu
$('.iconMenu-sticky').toggle(function () {
    $(".menu-sticky").css({'display' : 'block'});
}, function () {
    $(".menu-sticky").css({'display':'none'});
});


// Initialize Lightbox galery
(function($) {
    $(".fancybox-thumb").fancybox({
      prevEffect	: 'none',
      padding: '0',
      helpers	: {
        title	: {
          type: 'over'
        },
        thumbs	: {
          width	: 50,
          height	: 50
        }
      }
    });
})(jQuery);
