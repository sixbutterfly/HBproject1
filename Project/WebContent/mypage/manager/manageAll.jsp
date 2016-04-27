<%@page import="com.hb.model.login.MemberDto"%>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.content{
		height: 800px;
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
		<%@include file="/templet/aside1.jsp" %>
	<div>
		<p>회원 권한 수정</p>
		<hr/>
	</div>
	<div>
		<select>
			<option>전체보기</option>
			<option>회원</option>
			<option>학생</option>
			<option>강사</option>
			<option>영업부</option>
			<option>행정부</option>
		</select>
		<hr/>
	</div>
	<div>
		<span>회원번호</span><span>이름</span><span>핸드폰번호</span><span>가입일</span><span>권한</span>
	</div>
	<div>
		<a href="#"><span>0000</span><span>ㅇㅇㅇ</span><span>010-1234-1234</span><span>15/03/03</span><span>학생</span></a>
	</div>
	
	<%
		ArrayList<MemberDto> arr = (ArrayList<MemberDto>)request.getAttribute("list");
				for(MemberDto dto:arr){
		%>
		<div>
			<a href="memdetail.do?idx=<%=dto.get%>">
			<span><%=dto.get()%></span>
			<span><%=dto.get()%></span>
			<span><%=dto.get()%></span>
			<span><%=dto.get()%></span>
			<span><%=dto.get()%></span>
			</a>
		</div>
		<%
			}
		%>
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</body>
</html>