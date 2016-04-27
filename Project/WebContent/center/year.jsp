<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한빛교육센터>연혁</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav1.css"/>
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
		<%@include file="../templet/subnav1.jsp" %>
		
		<!-- content start -->
			<div>
				<p>CENTER INTRODUCTION</p>
				<span>연혁</span>
			</div>
			
			<img alt="" src="./imgs/2015.JPG">
			<img alt="" src="./imgs/2014.JPG">
			<img alt="" src="./imgs/2013.JPG">
			<img alt="" src="./imgs/2012.JPG">
			<img alt="" src="./imgs/2011.JPG">
			<img alt="" src="./imgs/2010.JPG">
			<img alt="" src="./imgs/2009.JPG">
			<img alt="" src="./imgs/2008.JPG">
			<img alt="" src="./imgs/2007.JPG">
			<img alt="" src="./imgs/2006.JPG">
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="../templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="../templet/footer.jsp" %>
	</div>
</body>
</html>