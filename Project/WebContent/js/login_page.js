$(document).ready(function(){
	
		$(".login>input").eq(0).click(function(){
			$(".login>input").eq(0).val("");
		});
		
		$(".login>input").eq(1).click(function(){
			$(".login>input").eq(1).val("");
		});
				
		$(".login>button").click(function(){
			var arr =[];
						
			var inputId = $(".login>input").eq(0).val();
			var inputPw = $(".login>input").eq(1).val();		
			
			if((inputId == "") || (inputId =="아이디")){				
				$(".login>input").eq(0).focus(function(){
					$(".login>input").eq(0).val("");
					$(".login>div").eq(0).html("");
					$(".login>div").eq(1).html("");
				    });
				$(".login>div").eq(0).html("<p>&nbsp;&nbsp; 아이디를 입력하세요</p>");
			}
			else if((inputPw == "") || (inputId =="패스워드")){
				
				$(".login>input").eq(1).attr("type", "text");				
				$(".login>input").eq(1).focus(function(){
					$(".login>input").eq(1).val("");
					$(".login>div").eq(0).html("");
					$(".login>div").eq(1).html("");
				    });
				$(".login>div").eq(1).html("<p>&nbsp;&nbsp; 패스워드를 입력하세요</p>");
			}	
			
		});
});