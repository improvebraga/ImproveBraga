/*
 * ImproveBraga.org Scripts
 */

document.addEventListener('DOMContentLoaded', function(){

	// Parallax Main-Header
	$(window).scroll( function()
	{
		var scroll = $(window).scrollTop(), slowScroll = scroll/2
		$('.page-header > .container').css({ transform: "translateY(" + slowScroll + "px)" })
	});

});

$(document).ready(function(){

	// Add Carousel
	$('.carousel').carousel()

	// Add Tabs
	$('#myTab a').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	})

});