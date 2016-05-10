
$(document).ready(function(){
	
		var inputId = $(".login>input").eq(0);
		var inputPw = $(".login>input").eq(1);
	
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
		
				
		var login = $(".login>button").click(function(){
			var arr =[];
			var loginValue = "아이디 또는 비밀번호를 다시 확인하세요.";
			
			if((inputId.val() == "") || (inputId.val() =="아이디")){	
				inputId.val("아이디 입력");		
				inputId.focus(function(){
					inputId.val("");					
				 });					
			}
			else if((inputPw.val() == "") || (inputPw.val() =="패스워드")){			
				inputPw.attr("type", "text");
				inputPw.val("패스워드 입력");
				inputPw.focus(function(){
					inputPw.val("");
					inputPw.attr("type", "password");
				});				
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
					//alert(jqXHR.responseText);
					location.href="login/login.korean?loginValue="+loginValue;
				},
				"success":function(data){
					if(data[0].authNo==0 || data[0].authNo==1 || data[0].authNo==2 || data[0].authNo==3 || data[0].authNo==4 || data[0].authNo==5 || data[0].authNo==9){
						var st = "<div class='user'>"+data[0].id+"님 </div>";
						st +="<div><a href='/Project/login/logout.korean'><span>logout</span></a></div>";
						$(".login").html(st);							
					}
				}
			});
		});
	});