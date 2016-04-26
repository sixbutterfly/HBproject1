$(document).ready(function(){
		$(".login>button").click(function(){
			var arr =[];
			$(".login>input").each(function(idx, item){
				arr[idx]=$(item).val();
			});
			$.ajax({
				"url":"/Project/login/ajaxlogin.korean",
				"data":{"id":arr[0],"pw":arr[1]},
				"method":"POST",
				"dataType":"json",
				"error":function(){
					alert('error');
				},
				"success":function(data){
					/*xml
					 * var name=$(data).find("name").text();
					var result=$(data).find("result").text();
					var st = "<div>"+name+"님 환영합니다</div>";
					st +="<div><a href='/Project/login/logout.korean'><span>logout</span></a></div>";
					$(".grid5").html(st);
					*/
//					var obj = JSON.parse(data);
					if(data[0].result){
						var st = "<div>"+data[0].id+"님 환영합니다</div>";
						st +="<div><a href='/Project/login/logout.korean'><span>logout</span></a></div>";
						$(".grid5").html(st);
					}
					
				}
			});
		});
	});