
$(document).ready(function(){
		
	$('input[name=checkAll]:checkbox').click(function(){
		
		if($('input[name=checkAll]:checkbox').is(":checked")){
			$('input[name=attdNo]:checkbox').prop('checked', true);
		}
		else{
		$('input[name=attdNo]:checkbox').prop('checked', false);	
		}
	});
	
	
	$('.attendHeader>:gt(16)').css('display','none');
	$('.attendHeader>:lt(17):gt(1)').css('display', '');
	
	for(var i = 0; i < $('.attendBody').length; i++){
		$('.attendBody:eq('+i+')>:gt(16)').css('display','none');
		$('.attendBody:eq('+i+')>:lt(17):gt(1)').css('display', '');
	}
	
	
	$('.btnPage .right').click(function(){	
		$('.attendHeader>:gt(16)').css('display','');
		$('.attendHeader>:lt(17):gt(1)').css('display', 'none');		
		for(var i = 0; i < $('.attendBody').length; i++){
			$('.attendBody:eq('+i+')>:gt(16)').css('display','');
			$('.attendBody:eq('+i+')>:lt(17):gt(1)').css('display', 'none');
		}
	});
	
	$('.btnPage .left').click(function(){
		$('.attendHeader>:gt(16)').css('display','none');
		$('.attendHeader>:lt(17):gt(1)').css('display', '');		
		for(var i = 0; i < $('.attendBody').length; i++){
			$('.attendBody:eq('+i+')>:gt(16)').css('display','none');
			$('.attendBody:eq('+i+')>:lt(17):gt(1)').css('display', '');
		}
	});
	
	
	$("#ins").click(function(){	
		
		var checkArray = new Array();		
		
		for(var i = 0; i < $('.attendBody').length; i++){
			if($('.attendBody:eq(' + i + ')>:eq(0)>input').is(":checked")){
				checkArray.push($('.attendBody:eq(' + i + ')>:eq(0)>input').val());
			}
		}
		
		if(checkArray.length == 0){
			alert("학생을 선택해주세요~!");
		}
		else{
			//if(confirm("출결 입력을 하시겠습니까???") == true){		
			if(true){
				$.ajax({
					"url":"/Project/attend/ajaxAttend.korean",
					"data":{"attdDate":$('.left:eq(0)>input').val(), "attdStatus":$('.right:eq(1)>select').val(), checkArray:checkArray},
					"method":"POST",
					"dataType":"json",
					"error" : function( jqXHR, textStatus, errorThrown ) {
						alert(jqXHR.responseText);
					},				
					"success":function(data){						
						
						location.reload();
						//for(var i = 0; i < data[0].attdNo[].length; i++){
							//console.log(data[0].day);
						//console.log(data[0].attdStatus);
							//console.log(data[0].atdNo[4]);
							
							//$('.attendBody:eq(' + data[0].attdNo[0] + ')>:eq(' + data[0].day + ')>input').val(data[0].attdStatus);
							//$('.attendBody:eq(2)>:eq(' + (data[0].day-4) + ')>input').val(data[0].attdStatus);
							//$('.attendBody:eq(2)>:eq(2)>input').val("*");
						//}				
					}	
				});		
				checkArray = new Array();
			}
			else{
				location.reload();
			}
		}
	});

});