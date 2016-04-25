	$(document).ready(function(){
		$('.nav_sub').css('display','none');
		
		$('.nav').mouseover(function(){
			$('.nav_sub').stop().slideDown(500);
			return false;
		});

		$('.nav').mouseleave(function(){
			$('.nav_sub').stop().slideUp(500);
		}).stop();

	});//ready end