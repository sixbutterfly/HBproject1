<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연혁</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside1.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.nav_sub a').on('click',function(){
			$('.anav').;
		});//click end
	});//ready end
</script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="../templet/header.jsp" %>
		<!-- nav -->
		<%@include file="../templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="../templet/aside1.jsp" %>
		
		<!-- content start -->
		
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="../templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="../templet/footer.jsp" %>
	</div>
</body>
</html>