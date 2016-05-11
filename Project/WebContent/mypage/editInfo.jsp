<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hb.model.member.MemberDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.title>p{
		font-size: 30pt;
		font-style: oblique;
	}
	.title>span{
		font-size: 15pt;
	}
	.title{
		margin: 20px;
		border-bottom: 3px solid #ddd;
		color: #666;
	}
	.ul{
		margin-left: 50px;
		font-size: 15pt;
	}
	#submit{
		margin-left: 300px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#email3').change(function(){
			$('#email3 option:selected').each(function() {
				if($(this).val() == 'self'){
					$('#email2').val("");
					$('#email2').attr("hidden", false);
				} else if ($(this).val == 'select'){
					$('#email2').val();
					$('#email2').attr("hidden", false);
				} else {
					$('#email2').val($(this).text());
					$('#email2').attr("hidden", true);
				}
			});
		});
		
		$(document).on("keyup", "#tel2", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		$(document).on("keyup", "#tel3", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		$(document).on("keyup", "#phone2", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		$(document).on("keyup", "#phone3", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		});
		
		$('#submit').click(function(){
			if($('#phone2').val()==""||$('#phone2').val()==null||$('#phone3').val()==""||$('#phone3').val()==null){
				alert("핸드폰번호를 입력하세요!");
				$('#phone2').focus();
				return false;
			}else if($('#addrresult1').val()==""||$('#addrresult1').val()==null||$('#addrresult2').val()==""||$('#addrresult2').val()==null){
				alert("주소를 입력하세요!");
				$('#addrresult1').focus();
				return false;
			}else if($('#email1').val()==""||$('#email1').val()==null||$('#email2').val()==""||$('#email2').val()==null){
				alert("메일 주소를 입력하세요!");
				$('#addrresult1').focus();
				return false;
			}else if($('#pw1').val()==""||$('#email1').val()==null){
				alert("기존의 비밀번호를 입력하세요!");
				$('#pw1').focus();
				return false;
			}else{} 
		});
	});
	
	function check1() {
		if ($('#pw0').val()==$('#pw1').val()) {
			$('#pw1').next().text('비밀번호가 일치합니다.');
		} else {
			$('#pw1').next().text('비밀번호가 일치하지 않습니다.').css('color','red').css('font-size','9pt');
			$('#pw1').val("");
		}
	}
	function check2() {
		if(!($.trim($("#pw").val()).match(/^(?=.*\d)(?=.*[A-z])[A-z0-9]{8,20}$/))){
			$('#pw').next().text('영문 숫자조합의 8~20자리의 비밀번호여야 합니다').css('color','red').css('font-size','9pt');
			$('#pw').val("");
	 	}else{
			$('#pw').next().text('사용 가능합니다');
	 	}
	}
	function check3() {
		if($('#pw2').val()!=$('#pw').val()){
			$('#pw2').next().text('비밀번호는 동일해야합니다.').css('color','red').css('font-size','9pt');
			$('#pw2').val("");
		}else if($('#pw').val()==""|| $('#pw').val()==null){
			$('#pw2').next().text(' ');
		}else{
			$('#pw2').next().text('비밀번호가 일치합니다');
		}
	}
</script>
</head>
		<%
			MemberDto dto = (MemberDto)request.getAttribute("dto");
			int memno = dto.getMemno();
			String memname = dto.getMemname();
			String phone1 = (String)request.getAttribute("phone1");
			String phone2 = (String)request.getAttribute("phone2");
			String phone3 = (String)request.getAttribute("phone3");
			String tel1 = (String)request.getAttribute("tel1");
			String tel2 = (String)request.getAttribute("tel2");
			String tel3 = (String)request.getAttribute("tel3");
			String address = dto.getMemaddress();
			String email1 = (String)request.getAttribute("email1");
			String email2 = (String)request.getAttribute("email2");
			String emailagree = dto.getEmailagree();
			String joinday = dto.getJoinday();
			String pw = (String)request.getAttribute("pw");
		%>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav5.jsp" %>
		
		<!-- content start -->
		<div class="title">
			<p>MY PAGE</p>
			<span>개인정보 수정</span>
		</div>
		
		<form action="updateinfo.korean">
		<ul class="ul">
			<li>회원 가입일 : <%=joinday %></li>
			<li>회원번호 : <%=memno %><input type="hidden" name="memno" value="<%=memno %>"/></li>
			<li>이름 : <%=memname %></li>
			<li>기존 비밀번호 : <input type="password" id="pw1" onblur="check1();"><span></span><input type="hidden" value="<%=pw %>" id="pw0"><br/>
				변경할 비밀번호 : <input type="password" id="pw" onblur="check2();"><span></span><br/>
				비밀번호 확인 : <input type="password" id="pw2" name="pw" onblur="check3();"><span></span>
			</li>
			<li>전화 번호 : 	<select name="tel1">
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
							</select> - 
				<input type="text" value="<%=tel2 %>" id="tel2" name="tel2" maxlength="4" style="width: 50px;"> - 
				<input type="text" value="<%=tel3 %>" id="tel3" name="tel3" maxlength="4" style="width: 50px;">
			</li>
			<li>핸드폰 번호 :	<select name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="070">070</option>
							</select> - 
							<input type="text" value="<%=phone2 %>" maxlength="4" id="phone2" name="phone2" style="width: 50px;"> - 
							<input type="text" value="<%=phone3 %>" maxlength="4" id="phone3" name="phone3" style="width: 50px;">
			</li>
			<li class="email"><label>주소* 수정 전 주소 : <%=address %></label>
			<div class="emailset">
				<input type="text" id="postnum" class="inputwidth" placeholder="우편번호" name="postnum"  id="address1">
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
				  	    document.getElementById('postnum').value = data.zonecode;
				  	    document.getElementById('addrresult1').value = fullAddr;
				  	    document.getElementById('addrresult2').focus();
				  	    }
					}).open();
				}
				</script><br/>
				<input type="text" id="addrresult1" placeholder="주소" name="addrresult1" id="address2"/> 
				<input type="text" id="addrresult2" placeholder="상세주소" name="addrresult2" id="address2"/>
			</div></li>
			<li>
				이메일 : <input type="text" value="<%=email1 %>" name="email1" id="email1"> 
				@	<input type="text" id="email2" value="<%=email2 %>" name="email2">
					<select id="email3">
						<option value="self" selected>직접입력</option>
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
					</select>
			</li>

			<li>이메일 수신 동의 : 
			<script type="text/javascript">
				$(document).ready(function() {
					if ($('#emailagree').val()=='Y' || $('#emailagree').val()=='y') {
						$('input:radio[name=emailagree]:input[id=y]').attr('checked', true);
					} else if($('#emailagree').val()=='N' || $('#emailagree').val()=='n') {
						$('input:radio[name=emailagree]:input[id=n]').attr('checked', true);
					}
				});
			</script>
				<input type="hidden" value="<%=emailagree %>" id="emailagree">
				<input type="radio" value="Y" name="emailagree" id="y">예
				<input type="radio" value="N" name="emailagree" id="n">아니오
			</li>
		</ul>
		<button type="submit" id="submit">변 경</button>
		<button type="reset">취 소</button>
		</form>
		<!-- content end -->
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>