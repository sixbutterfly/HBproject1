	$(document).ready(function(){
		$('.nav_sub').css('display','none');
		
		$('.nav_main a').mouseover(function(){
			$('.nav_sub').slideDown(800);
			return false;
		});
		$('.nav_sub').mouseleave(function(){
			$('.nav_sub').slideUp(800);
		});
	});//ready end