$(document).ready(function(){
    $('#menu-main_menu').children('li').hover(function() {
        $(this).children('ul').fadeIn();
    }, function() {
        $(this).children('ul').fadeOut();
    });
   
});
