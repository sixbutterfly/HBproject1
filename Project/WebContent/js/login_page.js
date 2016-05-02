$(document).ready(function(){
	
	var inputId = $(".login>input").eq(0);
	var inputPw = $(".login>input").eq(1);
	
	inputId.val("아이디");
	inputPw.val("패스워드");
	
	if((inputId.val() == "") || (inputId.val() =="아이디")){
		inputId.focus(function(){
			inputId.val("");					
		 });	
		
	}
	
	if((inputPw.val() == "") || (inputPw.val() =="패스워드")){			
		inputPw.attr("type", "text");
		inputPw.val("패스워드");
		inputPw.focus(function(){
			inputPw.val("");
			inputPw.attr("type", "password");
		});			
	}
	
				
		$(".login>button").click(function(){
			var arr =[];			
			
			if((inputId.val() == "") || (inputId.val() =="아이디")){				
				inputId.val("아이디");
				inputId.focus(function(){
					inputId.val("");
					$(".login>div").eq(0).html("");
					$(".login>div").eq(1).html("");
				    });
				$(".login>div").eq(0).html("<p>&nbsp;&nbsp; 아이디를 입력해주세요</p>");
				return false;
			}
			else if((inputPw.val() == "") || (inputPw.val() =="패스워드")){
				inputPw.attr("type", "text");
				inputPw.val("패스워드");
				inputPw.focus(function(){
					inputPw.val("");
					inputPw.attr("type", "password");
					$(".login>div").eq(0).html("");
					$(".login>div").eq(1).html("");
				    });
				$(".login>div").eq(1).html("<p>&nbsp;&nbsp; 패스워드를 입력해주세요</p>");
				return false;
			}
			
			/*else{				
				$(".login>div").eq(1).html("<p>&nbsp;&nbsp; 등록되지 않은 계정입니다.</p>");
				//return false;
			}*/
		
		});
});