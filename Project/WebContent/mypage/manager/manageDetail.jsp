<%@page import="com.hb.model.member.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>권한 수정</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.subhead{
		font-size: 15pt;
	}
	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	
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
	<div>
		<p>회원 권한 수정</p>
		<hr/>
	</div>
	
	<%
		MemberDto dto = (MemberDto) request.getAttribute("dto");
		%>
		<div>
			<form action="managelevel.korean">
			<div>
			<div class="subhead"><b><%=dto.getMemname()%>님의 정보</b></div>
			<div>회원 번호 : <%=dto.getMemno()%></div>
			<div>소속 : <% if(dto.getLevel()==0){%>회원
			<% }else if(dto.getLevel()==1){%>행정부
			<% }else if(dto.getLevel()==2){%>영업부
			<% }else if(dto.getLevel()==3){%>강사
			<% }else if(dto.getLevel()==4){%>학생
			<% }else if(dto.getLevel()==5){%>수료자
			<% }%></div>
			<select name="chlevel">
				<option value="0">회원</option>
				<option value="1">행정부</option>
				<option value="2">영업부</option>
				<option value="3">강사</option>
				<option value="4">학생</option>
				<option value="5">수료자</option>
			</select>
			<div>성별 : <%=dto.getMemgender()%></div>
			<div>주소 : <%=dto.getMemaddress()%></div>
			<div>전화번호 : <% if(dto.getMemtel()==null){%>없음
			<%}else%><%=dto.getMemtel()%>
			</div>
			<div>핸드폰번호 : <%=dto.getMemphone()%></div>
			<div>이메일 : <% if(dto.getMememail()==null){%>없음
			<%}else if(dto.getMememail().equals("@")){%>-
			<%}else%><%=dto.getMememail()%></div>
			<div>이메일 수신 동의 : <%if(dto.getEmailagree().equals("y")){%>수신
			<%}else {%>거부
			<%} %>
			</div>
			<div>가입일 : <%=dto.getJoinday()%></div>
			</div>
			<button type="submit">수정</button>
			<button type="reset">취소</button>
			</form>
		</div>
			<!-- content end -->
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</body>
</html>