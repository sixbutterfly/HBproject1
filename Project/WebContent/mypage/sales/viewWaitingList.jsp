<%@page import="com.hb.model.register.registerDto"%>
<%@page import="java.util.ArrayList"%>
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
	.content>div>p{
		font-size: 30pt;
		font-style: oblique;
	}
	.content>div>span{
		font-size: 15pt;
	}
	.content div{
		margin: 20px;
		border-bottom: 3px solid #ddd;
		color: #666;
	}
	.table{
		width: 700px;
		margin: 10px auto;
	}
	.table th{
		background-color: rgba(204,229,255,0.5);
	}
	.table tr{
		text-align: center;
	}
	.table tr a{
		text-decoration: none;
		color: black;
	}
	.table tr a:hover{
		color: #06c;
	}
	.content button{
		width: 50px;
		margin: 10px 350px;
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
			<div>
				<p>MY PAGE</p>
				<span>수강 대기자 명단</span>
			</div>
			
			<table class="table">
				<tr><th>회원번호</th><th>이름</th><th>연락처</th><th>email</th><th>서류제출1</th><th>서류제출2</th></tr>
				<%
					ArrayList<registerDto> list = (ArrayList<registerDto>) request.getAttribute("list");
					for(registerDto bean : list){
				%>
				<tr>
					<td><%=bean.getMemNo() %></td>
					<td><%=bean.getName() %></td>
					<td><%=bean.getTel() %></td>
					<td><%=bean.getEmail() %></td>
					<td><%=bean.getFile1() %></td>
					<td><%=bean.getFile2() %></td>
				</tr>
				<% } %>
			</table>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>