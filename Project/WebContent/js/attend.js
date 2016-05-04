
$(document).ready(function(){
	
	$('.attendHeader>:gt(16)').css('display','none');
	$('.attendHeader>:lt(17):gt(1)').css('display', '');
	
	
	for(var i = 0; i < 5; i++){
		$('.attendBody:eq('+i+')>:gt(16)').css('display','none');
	}
/*	$('.attend').each(function(idx, item){
		console.log(idx);
		console.log(item);
		item.css('display','none');
	});*/
	/*$('.attendBody:eq(0)>:gt(16)').css('display','none');
	$('.attendBody:eq(1)>:gt(16)').css('display','none');
	$('.attendBody:eq(2)>:gt(16)').css('display','none');
	$('.attendBody:eq(3)>:gt(16)').css('display','none');
	$('.attendBody:eq(4)>:gt(16)').css('display','none');*/
	
	$('.attendBody:eq(0)>:lt(17):gt(1)').css('display', '');
	$('.attendBody:eq(1)>:lt(17):gt(1)').css('display', '');
	$('.attendBody:eq(2)>:lt(17):gt(1)').css('display', '');
	$('.attendBody:eq(3)>:lt(17):gt(1)').css('display', '');
	$('.attendBody:eq(4)>:lt(17):gt(1)').css('display', '');
	
	/*for(var i = 0; i < 5; i++){ 	$('.attendBody:eq(i)>:gt(16)').css('display','none'); $('.attendBody:eq(i)>:lt(17):gt(1)').css('display', ''); }*/
	
	/*var attdVal = $('.attendBody>:lt(31):gt(1)').val();
	
	if( attdVal == null && attdVal == "" ){
		$('.attendBody>:lt(31):gt(1)').val() == "";
	}*/
	
	/*$('.btnPage #left')
	$('.btnPage #right')
	
	$('.attendBody:eq(0)>:gt(16)')
	
	$('.attendHeader>:lt(17):gt(1)')	
	$('.attendBody>:lt(17):gt(1)')	
	$('.attendHeader>:gt(16)')
	$('.attendBody>:gt(16)')*/
	
	$('.btnPage #right').click(function(){	
		$('.attendHeader>:gt(16)').css('display','');
		$('.attendHeader>:lt(17):gt(1)').css('display', 'none');	
		$('.attendBody>:gt(16)').css('display','');		
		$('.attendBody>:lt(17):gt(1)').css('display', 'none');	
	});
	
	$('.btnPage #left').click(function(){
		$('.attendHeader>:gt(16)').css('display','none');
		$('.attendHeader>:lt(17):gt(1)').css('display', '');	
		$('.attendBody>:gt(16)').css('display','none');		
		$('.attendBody>:lt(17):gt(1)').css('display', '');	
	});
	
	$("#ins").click(function(){	
		/*	$('.attendBody>:lt(31):gt(1)').each(function(idx, item){
				arr[idx]=$(item).val();
			});*/
		var attdno = [];
		attdno.push(attdno1);
		attdno.push(attdno2);
		attdno.push(attdno3);
		attdno.push(attdno4);
		attdno.push(attdno5);
		attdno.push(attdno6);
		
			$.ajax({
				"url":"/Project/login/ajaxAttend.korean",
				"data":{"attdDate":$('.left:eq(0)>input').val(), "attdStatus":$('.right:eq(1)>select').val(), "attdNo":attdno},
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