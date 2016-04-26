<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
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
}
.btn{
	width: 8px;
	height: 12px;
}
.inputwidth{
	width: 140px;
}
.inputtel{
	width: 80px;
}
#overlab{
	width:65px;
}
#serchaddr{
	width:65px;
}
#addrresult{
	width:330px;
}

</style>
<script type="text/javascript" src="../js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/subnav0.jsp" %>
		
	<div>
		<p>회원가입</p>
		<hr/>
	</div>
	<div>
		<img src="joinimage/step2.gif"/>
	</div>
	<div>
		<p><b><img class="btn" src="joinimage/btn_r.gif"> 회원정보입력</b></p>
		<hr id="hrsub"/>
		<div class="form"><label>아이디</label></div>
		<div class="forminput"><input type="text" name="id" class="inputwidth"/>
		<button id="overlab">중복확인</button></div>
		<div class="form"><label>비밀번호</label></div>
		<div class="forminput"><input type="password" name="pw" class="inputwidth"/></div>
		<div class="form"><label>비밀번호확인</label></div>
		<div class="forminput"><input type="password" name="pw2" class="inputwidth"/></div>
		<div class="form"><label>이름</label></div>
		<div class="forminput"><input type="text" class="inputwidth"/></div>
		<div class="form"><label>성별</label></div>
		<div class="forminput">
		<input type="radio" name="sex" value="y">남자
		<input type="radio" name="sex" value="n">여자
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
			-<input type="text" name="number2" class="inputtel">
			-<input type="text" name="number3" class="inputtel">
		</div>
		<div class="form"><label>H.P</label></div>
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
			-<input type="text" name="phone2" class="inputtel">
			-<input type="text" name="phone3" class="inputtel">
			</div>
		<div class="email"><label>이메일</label></div>
		<div class="emailset">
		<input type="text" name="email" class="inputwidth"/>- <select>
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
			<label >이메일 수신동의</label>
			<input type="radio" name="emailagree" value="y">예
			<input type="radio" name="emailagree" value="n">아니오
			
		</div>
		<div class="email"><label>주소</label></div>
		<div class="emailset">
		<input type="text" class="inputwidth"/> <button id="serchaddr">주소찾기</button>
		<br/><input type="text" id="addrresult"/>
		</div>
		<div class="form"><label>회사명</label></div>
		<div class="forminput"><input type="text" class="inputwidth"></div>
		<div class="form"><label>홈페이지</label></div>
		<div class="forminput"><input type="text" value="http://"/></div>
	</div>
	<div>
	<form action="#">
	<div class="button">
		<button type="submit">확인</button>
		<button type="reset">취소</button>
	</div>
	</form>
</div>
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
	<div></div>
</body>
</html>