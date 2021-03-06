/**
 * Rolling Banner javaScript
 */

var swiper = new Swiper('#main_banner', {
	/* 	slidesPerView : 'auto',
		pagination : { // 페이징 설정
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		}, */

		sliderPerView : 'auto',
		loop : true,
		loopAdditionalSlides : 1,
		pagination : true,
		autoplay : {
			delay : 3000,
			disableOnInteraction : false,
		},
		pagination: {
		    el: '.swiper-pagination',
		    clickable : true,
			/*type : 'bullets',*/
			type : 'custom',
			renderCustom: function(swiper, current, total) {
				var customPaginationHtml = "";
				for(var i = 0; i < total; i++){
					if(i == (current - 1)) {
						customPaginationHtml += '<span class="swiper-pagination-customs swiper-pagination-customs-active"></span>';
					} else {
						customPaginationHtml += '<span class="swiper-pagination-customs"></span>';
					}
				}
				return customPaginationHtml; 
			}
		  },
	})