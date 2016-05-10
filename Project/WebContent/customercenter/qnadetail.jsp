<%@page import="com.hb.model.qna.qnadto"%>
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
<script type="text/javascript">
	$(document).ready(function(){
		var level = <%= (Integer)session.getAttribute("level") %>;
		console.log(level);
	switch (level) {
		case null:
			$('form button:eq(0)').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 0:
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 9:
			break;
		}
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
		<%@include file="/templet/subnav4.jsp" %>
		
		<!-- content start -->
			<div class="title">
				<p>CUSTOMER CENTER</p>
				<span>문의 게시판</span>
			</div>
			
			<%
				qnadto dto = (qnadto) request.getAttribute("dto");
			%>
			<form action="qnaeditform.korean">
				<input type="hidden" name="qnaNo" value="<%=dto.getQnaNo()%>">
				<table class="table">
					<tr><th>작성일</th><td><%=dto.getQnaDate() %></td>
						<th>작성자</th><td><%=dto.getQnaName() %></td>
					</tr>
					<tr><th>제목</th><td colspan="4"><%=dto.getQnaTitle() %></td></tr>
					<tr><th colspan="5">내용</th></tr>
					<tr><td colspan="5"><%=dto.getQnaContent() %></td></tr>
				</table>
				<button type="submit">수정</button>
				<button type="button"><a href="qnadelete.korean?qnaNo=<%=dto.getQnaNo() %>">삭제</a></button>
				<button type="button"><a href="qnalist.korean">목록</a></button>
			</form>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>