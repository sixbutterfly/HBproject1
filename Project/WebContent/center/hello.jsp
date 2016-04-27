<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한빛교육센터>인사말</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav0.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.content img{
		margin: 5px 10px;
		width: 780px;
	}
	.content p{
		font-size: 30pt;
		font-style: oblique;
	}
	.content span{
		font-size: 15pt;
		text-align: center;
	}
	.content div{
		margin: 20px;
		border-bottom: 3px solid #ddd;
		color: #666;
	}
</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="../templet/header.jsp" %>
		<!-- nav -->
		<%@include file="../templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="../templet/loginForm.jsp" %>
		<%@include file="../templet/subnav1.jsp" %>
		
		<!-- content start -->
			<div>
				<p>CENTER INTRODUCTION</p>
				<span>인사말</span>
			</div>
			
			<img alt="" src="./imgs/hello.jpg">
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="../templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="../templet/footer.jsp" %>
	</div>
</body>
</html>