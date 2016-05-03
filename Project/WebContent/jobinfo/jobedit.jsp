<%@page import="com.hb.model.job.jobDto"%>
<%@page import="com.hb.model.notice.noticeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CLEditor1_4_5/jquery.cleditor.css"/>
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
		text-align: center;
	}
	.table tr{
		height: 30px;
	}
	.table input{
		height: 20px;
		border: 0px;
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
<script type="text/javascript" src="CLEditor1_4_5/jquery.cleditor.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#editor').cleditor();
	});//ready end
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
		<%@include file="/templet/subnav3.jsp" %>
		
		<!-- content start -->
			<div class="title">
				<p>EMPLOYMENT</p>
				<span>채용 정보</span>
			</div>
			<%
			jobDto dto = (jobDto) request.getAttribute("dto");
			%>
			<form action="jobedit.korean">
				<input type="hidden" name="jobNo" value="<%=dto.getJobNo() %>">
				<table class="table">
					<tr><th>제목</th><td colspan="3"><input type="text" name="title" value="<%=dto.getJobTitle() %>"/></td>
					<th>작성자</th><td><input type="text" name="name" value="<%=dto.getJobName()%>" readonly="readonly"></td></tr>
					<tr><th colspan="6">내용</th></tr>
					<tr><td colspan="6"><textarea name="content" id="editor"><%=dto.getJobContent() %></textarea></td></tr>
				</table>
				<button type="submit">수정</button>
				<button type="reset">취소</button>
				<button type="button"><a href="job.korean">목록</a></button>
			</form>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>