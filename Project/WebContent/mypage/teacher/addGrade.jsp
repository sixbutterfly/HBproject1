<%@ page import="java.util.ArrayList"%>
<%@ page import="com.hb.model.grade.GradeDto"%>
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
		
		<% ArrayList<GradeDto> al = (ArrayList<GradeDto>)request.getAttribute("al"); %>
		
			<h1>성적 입력</h1>
			<table border="1">
				<tr><th>학번</th><th>이름</th><th>강의실</th><th>자바</th><th>웹</th><th>프레임워크</th></tr>
				<%
					for(int i=0; i<al.size(); i++) {
				%>
				<tr><td><% al.get(i).getStuno(); %></td><td><% al.get(i).getMemname();  %></td><td><% al.get(i).getRoomno();  %></td><td><% al.get(i).getJavagrade();  %></td><td><% al.get(i).getWebgrade();  %></td><td><% al.get(i).getFramegrade();  %></td></tr>
				<% 
					}
				%>
			</table>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>