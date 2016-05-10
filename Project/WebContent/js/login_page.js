$(document).ready(function(){
	
	var inputId = $(".login>input").eq(0);
	var inputPw = $(".login>input").eq(1);
	
	var start = 0;	
	
	inputId.val("아이디");
	inputPw.val("패스워드");	
	
	inputId.focus(function(){
		if((inputId.val() == "") || (inputId.val() =="아이디")){
			inputId.val("");
		}
	 });
	
	inputPw.focus(function(){
		inputPw.attr("type", "password");
		if((inputPw.val() == "") || (inputPw.val() =="패스워드")){
			inputPw.val("");
		}
	 });
	
	if((inputPw.val() == "") || (inputPw.val() =="패스워드")){			
		inputPw.attr("type", "text");
		inputPw.val("패스워드");			
	}
	
	$(".login>input").eq(1).keydown(function(){
		if (event.keyCode==13){
			login();
		}
	});
	
	
	$(".login>div").eq(0).css('display', 'none');
	$(".login>div").eq(1).css('display', 'none');
	$(".login>div").eq(2).css('display', 'none');	
				
	var login =	$(".login>button").click(function(){
			var arr =[];			
			
			if((inputId.val() == "") || (inputId.val() =="아이디")){	
				inputId.val("아이디");
				inputId.focus(function(){
					inputId.val("");
					$(".login>div").eq(0).css('display', 'none');
					$(".login>div").eq(1).css('display', 'none');
					$(".login>div").eq(2).css('display', 'none');	
				    });
				$(".login>div").eq(0).css('display', '');
				return false;
			}
			else if((inputPw.val() == "") || (inputPw.val() =="패스워드")){
				inputPw.attr("type", "text");
				inputPw.val("패스워드");
				inputPw.focus(function(){
					inputPw.val("");
					inputPw.attr("type", "password");
					$(".login>div").eq(0).css('display', 'none');
					$(".login>div").eq(1).css('display', 'none');
					$(".login>div").eq(2).css('display', 'none');	
				    });
				$(".login>div").eq(1).css('display', '');
				return false;
			}
			
			$(".login>input").each(function(idx, item){
				arr[idx]=$(item).val();
			});
			$.ajax({
				"url":"/Project/login/ajaxlogin.korean",
				"data":{"id":arr[0],"pw":arr[1]},
				"method":"POST",
				"dataType":"json",
				"error" : function( jqXHR, textStatus, errorThrown ) {
					$(".login>div").eq(2).css('display', '');
				},
				"success":function(data){
					location.href="../index.korean";
				}
			});
		
		});
});