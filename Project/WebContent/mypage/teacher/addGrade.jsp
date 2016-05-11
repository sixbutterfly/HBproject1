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
	.table tr a{
		text-decoration: none;
		color: black;
	}
	.table tr a:hover{
		color: #06c;
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
		<div class="title">
			<p>MY PAGE</p>
			<span>성적 입력</span>
		</div>
			<table class="table">
				<tr><th>학번</th><th>이름</th><th>강의실</th><th>자바</th><th>웹</th><th>프레임워크</th></tr>
				<%
					ArrayList<GradeDto> al = (ArrayList)request.getAttribute("al");
					for(GradeDto bean: al) {
				%>
				<tr>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getStuno() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getMemname() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getRoomno() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getJavagrade() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getWebgrade() %></a></td>
					<td><a href="gradeDetail.korean?stuno=<%=bean.getStuno() %>&name=<%=bean.getMemname() %>&roomno=<%=bean.getRoomno() %>&javagrade=<%=bean.getJavagrade() %>&webgrade=<%=bean.getWebgrade() %>&framegrade=<%=bean.getFramegrade() %>"><%=bean.getFramegrade() %></a></td>
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