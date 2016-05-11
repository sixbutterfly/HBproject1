<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.hb.model.curriculum.curriculumDto"%>
<%@page import="com.hb.model.register.registerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css"/>
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
	#cur>ul{
		margin: 10px 20px;
		font-size: 15pt;
		color: black;
		list-style: square;
	}
	
	.content button{
		display: inline-block;
		width: 50px;
		margin: 10px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#cur button').eq(0).click(function(){
			if(confirm("수강신청을 승인하시겠습니까?")){
				alert("승인이 완료되었습니다.");
			}else{
				alert("승인이 취소되었습니다.");
				return false;
			}
		});
	});
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
			<div class="title">
				<p>MY PAGE</p>
				<span>수강 신청 승인</span>
			</div>
			
			<%
				registerDto dto = (registerDto)request.getAttribute("dto");
				curriculumDto cdto = (curriculumDto)request.getAttribute("cdto");
			%>
			
			<form action="finalConfirm.korean">
			<input type="hidden" name="memNo" value="<%=dto.getMemNo() %>"/>
			<div id="cur">
				<ul>
					<li>신청 과정 : <%=cdto.getCurName() %></li>
					<li>이름 : <%=dto.getName() %></li>
					<li>전화번호 : <%=dto.getTel() %></li>
					<li>이메일 : <%=dto.getEmail() %></li>
					<li>서류1 : <a href="up/<%=dto.getFile1() %>" download><%=dto.getFile1() %></a></li>
					<li>서류2 : <a href="up/<%=dto.getFile2() %>" download><%=dto.getFile2() %></a></li>
					<li>회사명 : <%=dto.getJob() %></li>
					<li>구분 : <%=dto.getGubun() %></li>
					<li>관련항목 : <%=dto.getJobinfo() %></li>
					<li>결제방법 : <%=dto.getPay() %></li>
					<li>내용 : <p><%=dto.getContent() %></p></li>
				</ul>
				<button type="submit">승인</button>
				<a href="finallist.korean"><button type="button">목록</button></a>
			</div>
			</form>
						
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>