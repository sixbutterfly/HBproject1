<%@ page import="java.util.ArrayList"%>
<%@ page import="com.hb.model.grade.GradeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생 성적 입력 페이지</title>
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
	table {
		border-collapse: collapse;
		margin-left: 10%;
	}
	table th {
		background-color: rgb(10, 120, 230);
		color: white;
	}
	table tr {
		border-bottom: 1px solid black;
		border-top: 1px solid black;
		height: 50px;
	}
	table tr td {
		width: 100px;
		text-align: center;
	}
	a {
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
		<%@include file="/templet/subnav5.jsp" %>
		<!-- content start -->
			<h1 align="center">학생 성적 입력 페이지</h1><br/>
			<table>
				<tr><th>학번</th><th>이름</th><th>강의실</th><th>자바</th><th>웹</th><th>프레임워크</th></tr>
				<%
					ArrayList<GradeDto> al = (ArrayList)request.getAttribute("al");
					for(GradeDto bean: al) {
				%>
				<tr>
					<label for="a"><td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>" id="a"><%=bean.getStuno() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getMemname() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getRoomno() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getJavagrade() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getWebgrade() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getFramegrade() %></a></td></label>
				</tr>
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