/*
 * ImproveBraga.org Scripts
 */

document.addEventListener('DOMContentLoaded', function(){

	// Parallax Main-Header
	$(window).scroll( function()
    {
		var scroll = $(window).scrollTop(), slowScroll = scroll/2;
		$('#home-header > .container').css({ transform: "translateY(" + slowScroll + "px)" });
	});

});