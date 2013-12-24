$(document).ready(function(){
    $('#menu-main_menu').children('li').hover(function() {
        $(this).children('ul').fadeIn(100);
    }, function() {
        $(this).children('ul').fadeOut(100);
    });
	
	opened_submenu = null;
	$('#Sp_navi').children('li').click(function() {
		if ($(this).children('ul').length !== 0) {
			var sub_menu = $(this).children('ul');

			if (sub_menu.css('display') === 'none') {
				if (opened_submenu !== null) {
					opened_submenu.fadeOut(100);
				}
				opened_submenu = sub_menu;
				
				sub_menu.fadeIn(100);
			} else {
				sub_menu.fadeOut(100);
			}
		}
    });
});
