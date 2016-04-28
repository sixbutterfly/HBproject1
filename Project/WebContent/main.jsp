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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
		  'auto':true,
		  'controls':false,
		  'slideWidth':750
		  });
	}); //ready end
</script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="templet/header.jsp" %>
		<!-- nav -->
		<%@include file="templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="templet/loginForm.jsp" %>
		<%@include file="templet/subnav0.jsp" %>
		<!-- content start -->
			<ul class="bxslider">
				<li><img alt="mainbenner1" src="<%=request.getContextPath() %>/imgs/mainbenner1.jpg"></li>
				<li><img alt="mainbenner2" src="<%=request.getContextPath() %>/imgs/mainbenner2.jpg"></li>
				<li><img alt="mainbenner3" src="<%=request.getContextPath() %>/imgs/mainbenner3.jpg"></li>
				<li><img alt="mainbenner4" src="<%=request.getContextPath() %>/imgs/mainbenner4.jpg"></li>
			</ul>
			공지사항 게시판 등
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="templet/footer.jsp" %>
	</div>
</body>
</html>