$(document).ready(function () {

	var $items = JSON.parse(items);

    var swiper_options = {
		pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
		paginationClickable: true,
		keyboardControl: true,
		mousewheelControl: true,
//      hashnav: true,
        preloadImages: false,
        lazyLoading: true,
		onInit: function(swiper) {

            var count = swiper.slides.length;

            for(var i=0; i<count; i++)
            {
                $slide = $(swiper.slides[i]);

                $slide.css('background-image', 'url('+$slide.data('path')+'/'+$slide.data('image')+'?v='+$slide.data('utime')+')');

                $slide.hover(
	                function() {
	                	$(this).find('article').addClass('fadeOutDown');
	                	$(this).find('h1').removeClass('fadeInUp')
	                	.end().find('p').removeClass('fadeInUp');
	                },
	                function() {
	                	$(this).find('article').removeClass('fadeOutDown');
	                	$(this).find('h1').addClass('fadeInUp')
	                	.end().find('p').addClass('fadeInUp');
	                }
                );

				$('.ajax-popup-link').magnificPopup({
					type: 'ajax',
					ajax: {
						tError: '<a href="%url%">The content</a> could not be loaded.'
					},
					closeMarkup: '<button title="%title%" class="mfp-close"></button>',
					removalDelay: 800,
					mainClass: 'mfp-with-zoom'
				});
            }
		}
    };

	var swiper = new Swiper('.swiper-container', $.extend(swiper_options, swiper_options_custom));
});
