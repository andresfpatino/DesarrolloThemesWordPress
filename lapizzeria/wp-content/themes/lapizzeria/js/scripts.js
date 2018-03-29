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
