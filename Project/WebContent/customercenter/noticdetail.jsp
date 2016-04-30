<%@page import="com.hb.model.notice.noticeDto"%>
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
	.title>p{
		font-size: 30pt;
		font-style: oblique;
	}
	.title>span{
		font-size: 15pt;
	}
	.title{
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
	.content button{
		width: 50px;
	}
	.table+button{
		margin-left: 320px;
	}
	.content a{
		text-decoration: none;
		color: black;
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
		<%@include file="/templet/subnav4.jsp" %>
		
		<!-- content start -->
			<div class="title">
				<p>CUSTOMER CENTER</p>
				<span>공지사항</span>
			</div>
			
			<%
				noticeDto dto = (noticeDto) request.getAttribute("dto");
			%>
			<form action="notice.korean">
				<table class="table">
					<tr><th>글번호</th><td><%=dto.getNotNo() %></td>
						<th>작성일</th><td><%=dto.getNotDate() %></td>
						<th>작성자</th><td><%=dto.getName() %></td>
					</tr>
					<tr><th>제목</th><td colspan="5"><%=dto.getTitle() %></td></tr>
					<tr><th colspan="6">내용</th></tr>
					<tr><td colspan="6"><%=dto.getContent() %></td></tr>
				</table>
				<button type="submit">수정</button>
				<button type="button"><a href="notice.korean">목록</a></button>
			</form>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>