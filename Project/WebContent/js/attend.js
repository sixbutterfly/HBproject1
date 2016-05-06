
$(document).ready(function(){
	$('.attendHeader>:gt(16)').css('display','none');
	$('.attendBody>:gt(16)').css('display','none');
	$('.attendHeader>:lt(17):gt(1)').css('display', '');	
	$('.attendBody>:lt(17):gt(1)').css('display', '');
	
	var attdVal = $('.attendBody>:lt(31):gt(1)').val();
	
	if( attdVal == null && attdVal == "" ){
		$('.attendBody>:lt(31):gt(1)').val() == "";
	}
	
	/*$('.btnPage #left')
	$('.btnPage #right')
	
	$('.attendHeader>:lt(17):gt(1)')	
	$('.attendBody>:lt(17):gt(1)')	
	$('.attendHeader>:gt(16)')
	$('.attendBody>:gt(16)')*/
	
	$('.btnPage #right').click(function(){	
		$('.attendHeader>:gt(16)').css('display','');
		$('.attendBody>:gt(16)').css('display','');
		$('.attendHeader>:lt(17):gt(1)').css('display', 'none');	
		$('.attendBody>:lt(17):gt(1)').css('display', 'none');	
	});
	
	$('.btnPage #left').click(function(){
		$('.attendHeader>:gt(16)').css('display','none');
		$('.attendBody>:gt(16)').css('display','none');
		$('.attendHeader>:lt(17):gt(1)').css('display', '');	
		$('.attendBody>:lt(17):gt(1)').css('display', '');	
	});
	
	$("#ins").click(function(){	
		/*	$('.attendBody>:lt(31):gt(1)').each(function(idx, item){
				arr[idx]=$(item).val();
			});*/
			$.ajax({
				"url":"/Project/login/ajaxAttend.korean",
				"data":{"attdDate":$('.left:eq(0)>input').val(), "attdStatus":$('.right:eq(1)>select').val(), "attdNo":$('.attendBody>:eq(0)>input').val()},
				"method":"POST",
				"dataType":"json",
				"error" : function( jqXHR, textStatus, errorThrown ) {
					//alert(jqXHR+textStatus+errorThrown);
				},				
				"success":function(data){			
					
				}	
			});		
			
		});
	});