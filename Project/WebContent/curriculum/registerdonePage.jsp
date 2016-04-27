<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강 신청 완료</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.bxslider.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
		  'auto':true,
		  'controls':false,
		  'slideWidth':1500,
		  });
	}); // ready end
</script>
<style>
	#h2 {
		width: 500px;
		height: 400px;
		text-align: center;
		vertical-align: middle;
		margin-left: 16%;
	}
</style>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/aside1.jsp" %>
		
		<!-- content start -->
			<br/>
			<br/>
			<br/>
			<br/>
			<div id="h2">
				<h2>수강 신청이 완료 되었습니다.</h2>
				<br/>
				<br/>
				<br/>
				<br/>
				<a href="<%=request.getContextPath() %>/curriculum/javacurriculumPage.jsp">
					커리큘럼 확인하러 가기
				</a>
			</div>
		<!-- content end -->
			
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>