<%@page import="com.hb.model.member.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 정보 입력</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav1.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	div>p{
		font-size: 15px;
	}
	hr {
	width: 100%;
	background-color: silver;
	height: 2px;
	border: none;
}
	button{
	width: 50px;
	}
	select{
		width: 80px;
		margin-left: 13px;
	}
	label{
		margin-left: 13px;
	}
	.form{
	height: 36px;
	text-align: left;
	width:150px;
	background-color: silver;
	display: inline-block;
	vertical-align: middle;
	border-bottom: white solid 1px;
}
	.form>p{
		font-size: 13px;
	}
	.forminput{
	height: 36px;
	width:80%;
	background-color: #eeeeee;
	display: inline-block;
	vertical-align: middle;
	border-bottom: white solid 1px;
	}
	input{
		height: 15px;
		margin-left: 10px;
	}
#hrsub{
	width: 100%;
	background-color: silver;
	height: 1px;
	border: none;
}
.email{
	height: 55px;
	text-align: left;
	width:150px;
	background-color: silver;
	display: inline-block;
	vertical-align: middle;
	border-bottom: white solid 1px;
}
.emailset{
	height: 55px;
	width:80%;
	background-color: #eeeeee;
	display: inline-block;
	vertical-align: middle;
	border-bottom: white solid 1px;
}
.button{
	text-align: center;
	margin-top: 20px;
}
.btn{
	width: 8px;
	height: 12px;
}
.inputwidth{
	width: 140px;
}
.inputtel{
	width: 60px;
}
.subbtn{
	margin-right: 20px;
}
#overlab{
	width:65px;
}
#serchaddr{
	width:95px;
	height: 22px;
}
#addrresult1{
	width:230px;
}
#addrresult2{
	width:230px;
}
#emailtype{
}
#close{
    width:50px;
    margin-bottom:50px;
    cursor:pointer;
    font-weight:bold;
   }
 #popup{
    width: 350px;
    height: 180px;
    background: #DAFCd1;
    position: absolute;
    top: 150px;
    left: 500px;
    text-align: center;
    border: 2px solid #000;
    display: none;
   }
.errmsg{
	font-size: 9pt;
	color: red;
}
.emailagree{
	font-size: 10pt;
}
.radio{
	margin-top: 10px;
}

</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#overlab').click(function(){
			var id=$('#id').val();
			$.ajax({
				url:"join/overlab.jsp",
				data:"id="+id,
				type:"post",
				dataType:"xml",
				success:function(data){
					var using=$(data).find("result").text();
					if(using=='true'){
						$('#popup>div>span').text("사용중인 아이디입니다");
					}else{
						$('#popup>div>span').text("사용 가능한 아이디입니다");
						$('#overlab').next().text("");
					}
				}
			});
			
			$('#popup').show();
			return false;
			});
		$('#popclose').click(function(){
			$('#popup').hide();
			return false;
		});
		$('#id').keyup(function(){
		if($('#id').val().match(/[^a-zA-Z0-9_]/g)){
			alert("특수문자는 사용할 수 없습니다.");
			$('#id').val("");
			$('#id').focus();
			return false;
			}
		});
		
		$('#pw'&&'#pw2').focus(function(){
			if(!($.trim($("#pw").val()).match(/^(?=.*\d)(?=.*[A-z])[A-z0-9]{8,20}$/))){
				$('#pw').next().text(' 영문 숫자조합의 8~20자리의 비밀번호여야 합니다');
				$('#pw').focus();
			return false;
	 			}else{
					$('#pw').next().text(' 사용 가능합니다');
					return false;
	 		}
		});
		$('#pw2'&&'#name').focus(function(){
			if($('#pw2').val()!=$('#pw').val()){
				$('#pw2').next().text(' 비밀번호는 동일해야합니다.');
				$('#pw2').focus();
				return false;
				}else if($('#pw').val()==""|| $('#pw').val()==null){
					$('#pw2').next().text(' ');
					return false;
				}else{
					$('#pw2').next().text(' 비밀번호가 일치합니다');
					return false;
				}
		});
		
		$('#tel2').keyup(function(){
			if($('#tel2').val().match(/[^0-9]/gi)){
			$('#tel3').next().text(' 숫자만 입력 가능합니다');
			$('#tel2').focus();
			return false;
			}else{
			$('#tel3').next().text('');
			return false;
			}
		});
		$('#tel3').keyup(function(){
			if($('#tel3').val().match(/[^0-9]/gi)){
			$('#tel3').next().text(' 숫자만 입력 가능합니다');
			return false;
			}else{
			$('#tel3').next().text('');
			return false;
			}
		});
		$('#phone2').keyup(function(){
			if($('#phone2').val().match(/[^0-9]/gi)){
			$('#phone3').next().text(' 숫자만 입력 가능합니다');
			$('#phone2').focus();
			return false;
			}else{
			$('#phone3').next().text('');
			return false;
			}
		});
		$('#phone3').keyup(function(){
			if($('#phone3').val().match(/[^0-9]/gi)){
			$('#phone3').next().text(' 숫자만 입력 가능합니다');
			return false;
			}else{
			$('#phone3').next().text('');
			return false;
			}
		});
		
		function email(){
			$('#emailtype').val($('#emailselect').val())
		}
		$('#emailselect').change(email);
		
		
		$('#submit').click(function(){
			if($('#id').val()==""||$('#id').val()==null){
				alert("id를 입력하세요!");
				$('#id').focus();
				return false;
				}else if($('#pw').val()==""||$('#pw').val()==null){
				alert("비밀번호를 입력하세요!");
				$('#pw').focus();
				return false;
			}else if($('#name').val()==""||$('#name').val()==null){
				alert("이름를 입력하세요!");
				$('#name').focus();
				return false;
			}else if(!($('#male').is(':checked')||$('#female').is(':checked'))){
				alert("성별을 선택하세요!");
				return false;
			}else if($('#phone2').val()==""||$('#phone2').val()==null||$('#phone3').val()==""||$('#phone3').val()==null){
				alert("핸드폰번호를 입력하세요!");
				$('#phone2').focus();
				return false;
			}else if($('#addrresult1').val()==""||$('#addrresult1').val()==null||$('#addrresult2').val()==""||$('#addrresult2').val()==null){
				alert("주소를 입력하세요!");
				$('#addrresult2').focus();
				return false;
			}else{} 
		});
	});
</script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav1.jsp" %>
		
	<div>
		<p>회원가입</p>
		<hr/>
	</div>
	<div>
		<img src="join/joinimage/step2.gif"/>
	</div>
	<div id="popup">
		<div style=" height:80px; margin-top:70px;"><span></span></div>
		<div id="popclose">닫기</div>
	</div>
	<form action="memberjoin.korean" method="post">
	<div>
		<p><b><img class="btn" src="join/joinimage/btn_r.gif"> 회원정보입력</b><label style="font-size:9pt">*표 필수 입력</label></p>
		<hr id="hrsub"/>
		<div class="form"><label>아이디*</label></div>
		<div class="forminput"><input type="text" name="id" class="inputwidth" id="id"/>
		<button type="submit" id="overlab" name="overlab">중복확인</button><span class="errmsg"> 영문 및 숫자만 사용 가능합니다</span>
		</div>
		<div class="form"><label>비밀번호*</label></div>
		<div class="forminput"><input type="password" name="pw" class="inputwidth" id="pw" placeholder="비밀번호"/><span class="errmsg"></span></div>
		<div class="form"><label>비밀번호확인*</label></div>
		<div class="forminput"><input type="password" name="pw2" class="inputwidth" id="pw2" placeholder="비밀번호 확인"/><span class="errmsg"></span></div>
		<div class="form"><label>이름*</label></div>
		<div class="forminput"><input type="text" class="inputwidth" id="name" name="name"/></div>
		<div class="form"><label>성별*</label></div>
		<div class="forminput">
		<input type="radio" name="gender" value="남자" class="radio" id="male">남자
		<input type="radio" name="gender" value="여자" class="radio" id="female">여자
		</div>
		<div class="form"><label>전화번호</label></div>
		<div class="forminput">
			<select name="tel">
				<option value="02">02</option>
				<option value="031">031</option>
				<option value="032">032</option>
				<option value="033">033</option>
				<option value="041">041</option>
				<option value="042">042</option>
				<option value="043">043</option>
				<option value="051">051</option>
				<option value="052">052</option>
				<option value="053">053</option>
				<option value="054">054</option>
				<option value="055">055</option>
				<option value="061">061</option>
				<option value="062">062</option>
				<option value="063">063</option>
				<option value="064">064</option>
				<option value="070">070</option>
				<option value="0505">0505</option>
				<option value="0502">0502</option>
			</select>
			-<input type="text" name="tel2" class="inputtel" maxlength="4" id="tel2">
			-<input type="text" name="tel3" class="inputtel" maxlength="4" id="tel3"><span class="errmsg"></span>
		</div>
		<div class="form"><label>H.P*</label></div>
		<div class="forminput">
			<select name="phone">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				<option value="070">070</option>
			</select>
			-<input type="text" name="phone2" class="inputtel"  maxlength="4" id="phone2">
			-<input type="text" name="phone3" class="inputtel"  maxlength="4" id="phone3"><span class="errmsg"></span>
			</div>
		<div class="email"><label>이메일</label></div>
		<div class="emailset">
		<input type="text" name="email" class="inputwidth"/ id="emailtype2">@<input type="text" name="email2" class="inputwidth" id="emailtype"/>
			<select name="emailselect" id="emailselect">
				<option value="" selected>직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="chol.com">chol.com</option>
				<option value="dreamwiz.com">dreamwiz.com</option>
				<option value="empal.com">empal.com</option>
				<option value="freechal.com">freechal.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanafos.com">hanafos.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="hanmir.com">hanmir.com</option>
				<option value="hitel.net">hitel.net</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="korea.com">korea.com</option>
				<option value="lycos.co.kr">lycos.co.kr</option>
				<option value="nate.com">nate.com</option>
				<option value="netian.com">netian.com</option>
				<option value="paran.com">paran.com</option>
				<option value="yahoo.com">yahoo.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
			</select><br/>
			<label class="emailagree">이메일 수신동의</label>
			<input type="radio" name="emailagree" value="y" class="radio"><label class="emailagree">예</label>
			<input type="radio" name="emailagree" value="n" class="radio" checked><label class="emailagree">아니오</label>
			
		</div>
		<div class="email"><label>주소*</label></div>
		<div class="emailset">
		<input type="text" id="postnum" class="inputwidth" placeholder="우편번호" name="postnum"/>
		<input type="button" id="serchaddr" value="우편번호 찾기" onclick="searchAddress()">
		<script>
  		function searchAddress(){
  			new daum.Postcode({
  	            oncomplete: function(data) {
  	                var fullAddr = ''; // 최종 주소 변수
  	                var extraAddr = ''; // 조합형 주소 변수

  	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
  	                    fullAddr = data.roadAddress;

  	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
  	                    fullAddr = data.jibunAddress;
  	                }

  	                if(data.userSelectedType === 'R'){
  	                    if(data.bname !== ''){
  	                        extraAddr += data.bname;
  	                    }
  	                    if(data.buildingName !== ''){
  	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
  	                    }
  	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
  	                }

  	                document.getElementById('postnum').value = data.zonecode; //5자리 새우편번호 사용
  	                document.getElementById('addrresult1').value = fullAddr;
  	                document.getElementById('addrresult2').focus();
  	            }
  	        }).open();
  	    }
</script>
		<br/><input type="text" id="addrresult1" placeholder="주소" name="addrresult1"/> 
		<input type="text" id="addrresult2" placeholder="상세주소" name="addrresult2"/>
		</div>
	</div>
<div>
	<div class="button">
		<button class="subbtn" type="submit" id="submit">확인</button>
		<button class="subbtn" type="reset">취소</button>
	</div>
	</form>
</div>
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>