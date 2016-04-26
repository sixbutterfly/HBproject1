	$(document).ready(function(){
		$('.nav_sub').css('display','none');
		
		$('.nav').mouseover(function(){
			$('.nav_sub').stop().slideDown(400);
			return false;
		});

		$('.nav').mouseleave(function(){
			$('.nav_sub').stop().slideUp(400);
		}).stop();

	});//ready end