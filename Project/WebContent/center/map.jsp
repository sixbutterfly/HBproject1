<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한빛교육센터>찾아오는길</title>
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
	iframe{
		margin: 10px;
		width: 95%;
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
				<span>건국대점</span>
			</div>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6327.127910617945!2d127.07603992172871!3d37.54177488094339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca4dc33fb3b85%3A0x890cb3635c0a096d!2z6rG06rWt64yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1461573482338" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			
			<div>
				<h3>회사주소</h3> ＠ 서울특별시 광진구 능동로 120
				<h3>대표전화</h3> ☎ 02-707-1480
			</div>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="../templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="../templet/footer.jsp" %>
	</div>
</body>
</html>