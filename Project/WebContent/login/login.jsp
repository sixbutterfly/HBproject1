<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/table.css" />

<script type="text/javascript" src="../js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="../js/menuload.js"></script>
</head>
<body>
	<div class="container_12">
		<%@include file="../templet/header.jsp" %>
		<%@include file="../templet/nav.jsp" %>
		
		<div class="grid12">
			<h1>로그인</h1>
			<form action="islogin.korean" method="post">
			<div><label>아이디</label><input type="text" name="id" /></div>
			<div><label>비밀번호</label><input type="text" name="pw" /></div>
			<button>LOGIN</button>
			</form>
		</div>
		
		<div class="clear"></div>
		<%@include file="../templet/footer.jsp" %>
	</div>
</body>
</html>








