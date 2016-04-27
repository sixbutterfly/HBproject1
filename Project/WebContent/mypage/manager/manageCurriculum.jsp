<%@page import="com.hb.model.curriculum.curriculumDto"%>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav0.css"/>
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
				<span>커리큘럼 관리</span>
			</div>
			
			<table class="table">
				<tr><th>과정명</th><th>교육 시작기간</th><th>교육 종료기간</th><th>배정인원</th></tr>
				<%
					ArrayList<curriculumDto> list = (ArrayList<curriculumDto>)request.getAttribute("list");
							for(curriculumDto dto : list){
				%>
					<tr>
						<td><a href="curdetail.korean?curNo=<%=dto.getCurNo() %>"><%=dto.getCurName() %></a></td>
						<td><%=dto.getCurDate() %></td>
						<td><%=dto.getCurDateEnd() %></td>
						<td><%=dto.getCurSupply() %></td>
					</tr>
				<%} %>
			</table>
			
			<a href="curadd.korean"><button type="button">추가</button></a>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>