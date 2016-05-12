<%@page import="com.hb.model.register.registerDto"%>
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
<script type="text/javascript">
	function confirmAsk() {
		if (confirm("정말 수강신청을 취소하시겠습니까?")) {
			return true;
		}
		return false;
	}
	
	function getFilename() {
		if (confirm("첨부파일을 업로드 하시겠습니까?")) {
			return true;
		} else {
			return false;
		}
	};
</script>
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
		<%
			registerDto bean = (registerDto)request.getAttribute("bean");
			String curname = (String)request.getAttribute("curname");
			
		%>
			<div class="title">
				<p>MY PAGE</p>
				<span>수강 신청 목록</span>
			</div>
			<form action="fileReupload.korean">
				<table class="table">
					<tr><th>이름</th><th>연락처</th><th>신청과정명</th><th>첨부파일1</th><th>첨부파일2</th></tr>
					<tr><td><%=bean.getName() %></td><td><%=bean.getTel() %></td><td><%=curname %></td><td id="file1"><%=bean.getFile1() %></td><td id="file2"><%=bean.getFile2() %></td>
					<tr><td></td><td></td><td></td><td><input type="file" name="newfile1"></td><td><input type="file" name="newfile2"></td>
				</table>
					<input type="hidden" value="<%=bean.getFile1() %>" name="oldfile1">
					<input type="hidden" value="<%=bean.getFile2() %>" name="oldfile2">
					<input type="hidden" value="<%=bean.getCurNo() %>" name="curno">
					<input type="hidden" value="<%=bean.getMemNo() %>" name="memno">
					<button onclick="return getFilename();">파일 업로드</button>
			</form>
				
			<form action="del.korean" onsubmit="return confirmAsk();">
				<input type="hidden" name="curno" value="<%=bean.getCurNo() %>">
				<input type="hidden" name="memname" value="<%=bean.getName() %>">
				<button>수강 취소</button>
			</form>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>