<%@page import="com.hb.model.after.afterdto"%>
<%@page import="com.hb.model.notice.noticeDto"%>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.bx-pager.bx-default-pager{
		border-bottom: 10px solid;
		border-bottom-color: #ddd;
	}
	.notice, .after{
		width: 350px;
		display: inline-block;
		margin: 10px 10px;
	}
	.notice>span, .after>span{
		color: #666;
		font-size: 13pt;
		border-bottom: 3px solid #ddd;
	}
	.content a{
		text-decoration: none;
		color: #666;
	}
	.content a:hover{
		color: #06c;
	}
	.noticetable, .aftertable{
		font-size: 10pt;
	}
	.noticetable th, .aftertable th{
		border-bottom: 1px solid;
		background-color: rgba(204,229,255,0.5);
	}
	.noticetable tr, .aftertable tr{
		text-align: center;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
		  'auto':true,
		  'controls':false,
		  'slideWidth':750
		  });
	}); //ready end
</script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="templet/header.jsp" %>
		<!-- nav -->
		<%@include file="templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="templet/loginForm.jsp" %>
		<%@include file="templet/subnav0.jsp" %>
		<!-- content start -->
			<ul class="bxslider">
				<li><img alt="mainbenner1" src="<%=request.getContextPath() %>/imgs/mainbenner1.jpg"></li>
				<li><img alt="mainbenner2" src="<%=request.getContextPath() %>/imgs/mainbenner2.jpg"></li>
				<li><img alt="mainbenner3" src="<%=request.getContextPath() %>/imgs/mainbenner3.jpg"></li>
				<li><img alt="mainbenner4" src="<%=request.getContextPath() %>/imgs/mainbenner4.jpg"></li>
			</ul>
			
			<div class="notice">
			<span><a href="notice.korean">공지사항</a></span><br/>
				<table class="noticetable">
					<tr><th width="200px">제목</th><th>작성일</th><th>작성자</th></tr>
			<%
				ArrayList<noticeDto> list = (ArrayList<noticeDto>)request.getAttribute("list");
				for(noticeDto dto : list){
			%>
					<tr>
						<td><a href="noticedetail.korean?notNo=<%=dto.getNotNo() %>"><%=dto.getTitle() %></a></td>
						<td><%=dto.getNotDate() %></td>
						<td><%=dto.getName() %></td>
					</tr>
			<% } %>
				</table>
			</div>
			
			<div class="after">
				<span><a href="after.korean">수강후기</a></span>
				<table class="aftertable">
					<tr><th width="200px">제목</th><th>작성일</th><th>작성자</th></tr>
			<%
				ArrayList<afterdto> list2 = (ArrayList<afterdto>) request.getAttribute("list2");
				for(afterdto dto2 : list2){
			%>
				<tr>
					<td><a href="afterdetail.korean?aftNo=<%=dto2.getAftNo() %>"><%=dto2.getAftTitle() %></a></td>
					<td><%=dto2.getAftDate() %></td>
					<td><%=dto2.getAftName() %></td>
				</tr>
			<% } %>
				</table>
			</div>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="templet/footer.jsp" %>
	</div>
</body>
</html>