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
				$(".login>input").eq(0).val("아이디 입력");			
				$(".login>input").eq(0).focus(function(){
					$(".login>input").eq(0).val("");
				    });		
			}
			else if(inputPw == ""){	
				$(".login>input").eq(1).attr("type", "text");
				$(".login>input").eq(1).val("패스워드 입력");
				$(".login>input").eq(1).focus(function(){
					$(".login>input").eq(1).val("");
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
					//alert(jqXHR+textStatus+errorThrown);
				},
				"success":function(data){
					if(data[0].result){
						var st = "<div class='user'>"+data[0].id+"님 </div>";
						st +="<div><a href='/Project/login/logout.korean'><span>logout</span></a></div>";
						$(".login").html(st);	
						$(".reg").hide();
					}
					
				}
			});
			
		});
});