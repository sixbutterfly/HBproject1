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
			<h2>connection denied</h2>
			you got no correct authnumber..
		<!-- content end -->
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>