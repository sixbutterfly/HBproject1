
$(document).ready(function(){
	
	// 전체 체크 클릭 기능	
		
	$('input[name=checkAll]:checkbox').click(function(){
		
		if($('input[name=checkAll]:checkbox').is(":checked")){
			$('input[name=attdNo]:checkbox').prop('checked', true);
		}
		else{
		$('input[name=attdNo]:checkbox').prop('checked', false);	
		}
	});
	
	
	// 화살표 버튼을 통한 출석표 옆으로 넘기기 기능
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
	
	
	// 입력 버튼을 클릭했을 때
	$("#ins").click(function(){	
		/*	$('.attendBody>:lt(31):gt(1)').each(function(idx, item){
				arr[idx]=$(item).val();
			});*/
//		var attdNo = [$('.attendBody').length];
//		for(var i = 0; i < $('.attendBody').length; i++){
//			attdNo.push($('.attendBody:eq(i)>:eq(0)>input').val());
//		}
		var checkArray = new Array();		
		
		for(var i = 0; i < $('.attendBody').length; i++){
			if($('.attendBody:eq(' + i + ')>:eq(0)>input').is(":checked")){
				checkArray.push($('.attendBody:eq(' + i + ')>:eq(0)>input').val());
			}
		}
		
		if(checkArray.length == 0){
			alert("출결 입력할 학생을 선택하세요");
		}
		else{
			if(confirm("입력하시겠습니까?") == true){		
		
				$.ajax({
					"url":"/Project/attend/ajaxAttend.korean",
					"data":{"attdDate":$('.left:eq(0)>input').val(), "attdStatus":$('.right:eq(1)>select').val(), checkArray:checkArray},
					"method":"POST",
					"dataType":"json",
					"error" : function( jqXHR, textStatus, errorThrown ) {
						alert(jqXHR.responseText);
					},				
					"success":function(data){						
						
						//for(var i = 0; i < data[0].attdNo[].length; i++){
							//console.log(data[0].day);
						//console.log(data[0].attdStatus);
							console.log(data[0].atdNo[4]);
							
							//$('.attendBody:eq(' + data[0].attdNo[0] + ')>:eq(' + data[0].day + ')>input').val(data[0].attdStatus);
							//$('.attendBody:eq(2)>:eq(' + (data[0].day-4) + ')>input').val(data[0].attdStatus);
							//$('.attendBody:eq(2)>:eq(2)>input').val("*");
						//}				
					}	
				});		
				checkArray = new Array();
			}
			else{
				location.reload(true);
			}
		}
	});
	
	
	

});