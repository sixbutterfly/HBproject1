<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/grid.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/nav.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav0.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css" />
<style type="text/css">
.eachmenu>.grid2 {
	<!--display: none;-->
}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp"%>
		<!-- nav -->
		<%@include file="/templet/nav.jsp"%>
		<!-- aside1 -->
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav5.jsp"%>
		
		<!-- content start -->
		컨텐츠
		<!-- content end -->

		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp"%>
		<!-- footer -->
		<%@include file="/templet/footer.jsp"%>
	</div>

</body>
</html>