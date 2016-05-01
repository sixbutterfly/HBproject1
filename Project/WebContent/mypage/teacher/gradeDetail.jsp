<%@ page import="java.util.ArrayList"%>
<%@ page import="com.hb.model.grade.GradeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적 입력 페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.content{
		height: 800px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	var re = /[^0-9]/gi;
	function recheck1() {
		if (re.test($('input[name=javagrade]').val()) != false) {
			$('input[name=javagrade]').next().text('숫자만 입력하세요.');
			$('input[name=javagrade]').val('');
			$('input[name=javagrade]').focus();
		}
	}
	function check1() {
		if ($('input[name=javagrade]').val()=="") {
			$('input[name=javagrade]').next().text('성적을 입력하세요');
			$('input[name=javagrade]').val();
			$('input[name=javagrade]').focus();
		}
		if ($('input[name=javagrade]').val()>100 || $('input[name=javagrade]').val()<0) {
			$('input[name=javagrade]').next().text('입력한 점수의 수치가 올바르지 않습니다.');
			$('input[name=javagrade]').val('');
			$('input[name=javagrade]').focus();
		}
		if (re.test($('input[name=javagrade]').val()) != false) {
			$('input[name=javagrade]').next().text('숫자만 입력하세요.');
			$('input[name=javagrade]').val('');
			$('input[name=javagrade]').focus();
		}
	}
	function recheck2() {
		if (re.test($('input[name=webgrade]').val()) != false) {
			$('input[name=webgrade]').next().text('숫자만 입력하세요.');
			$('input[name=webgrade]').val('');
			$('input[name=webgrade]').focus();
		}
	}
	function check2() {
		if ($('input[name=webgrade]').val()=="") {
			$('input[name=webgrade]').next().text('성적을 입력하세요');
			$('input[name=webgrade]').val();
			$('input[name=webgrade]').focus();
		}
		if ($('input[name=webgrade]').val()>100 || $('input[name=webgrade]').val()<0) {
			$('input[name=webgrade]').next().text('입력한 점수의 수치가 올바르지 않습니다.');
			$('input[name=webgrade]').val('');
			$('input[name=webgrade]').focus();
		}
		if (re.test($('input[name=webgrade]').val()) != false) {
			$('input[name=webgrade]').next().text('숫자만 입력하세요.');
			$('input[name=webgrade]').val('');
			$('input[name=webgrade]').focus();
		}
	}
	function recheck3() {
		if (re.test($('input[name=framegrade]').val()) != false) {
			$('input[name=framegrade]').next().text('숫자만 입력하세요.');
			$('input[name=framegrade]').val('');
			$('input[name=framegrade]').focus();
		}
	}
	function check3() {
		if ($('input[name=framegrade]').val()=="") {
			$('input[name=framegrade]').next().text('성적을 입력하세요');
			$('input[name=framegrade]').val();
			$('input[name=framegrade]').focus();
		}
		if ($('input[name=framegrade]').val()>100 || $('input[name=framegrade]').val()<0) {
			$('input[name=framegrade]').next().text('입력한 점수의 수치가 올바르지 않습니다.');
			$('input[name=framegrade]').val('');
			$('input[name=framegrade]').focus();
		}
		if (re.test($('input[name=framegrade]').val()) != false) {
			$('input[name=framegrade]').next().text('숫자만 입력하세요.');
			$('input[name=framegrade]').val('');
			$('input[name=framegrade]').focus();
		}
	}
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
		<%@include file="/templet/subnav5.jsp" %>
		<!-- content start -->
			<h2><%=request.getAttribute("name") %></h2><br/>
			<form action="editGrade.korean">
				<div>학번 : <input type="text" name="stuno" id="stuno" value="<%=request.getAttribute("stuno") %>" readonly="readonly"></div>
				<div>강의실 : <input type="text" value="<%=request.getAttribute("roomno") %>" readonly="readonly"></div>
				<div>자바 성적 : <input type="text" name="javagrade" maxlength="3" value="<%=request.getAttribute("javagrade") %>" onkeyup="recheck1();" onblur="check1();"><label></label></div>
				<div>웹 성적 : <input type="text" name="webgrade" maxlength="3" value="<%=request.getAttribute("webgrade") %>" onkeyup="recheck2();" onblur="check2();"><label></label></div>
				<div>프레임워크 성적 : <input type="text" name="framegrade" maxlength="3" value="<%=request.getAttribute("framegrade") %>" onkeyup="recheck3();" onblur="check3();"><label></label></div>
				<button type="submit" id="submit">변 경</button>
			</form>
			<a href="addgrade.do"><button>목 록</button></a>
		<!-- content end -->
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>