<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.content{
		height: 800px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
</head>
		<%
			int memno = 0;
			int level = 0;
			String memname = "";
			String memgender = "";
			String memphone = "";
			String memtel = "";
			String memaddress = "";
			String mememail = "";
			String emailagree = "";
			String joinday = "";
			ArrayList<MemberDto> al = new ArrayList<MemberDto>();
			al = (ArrayList<MemberDto>)request.getAttribute("al");
			for(int i=0; i<al.size(); i++) {
				memno = (int)al.get(i).getMemno();
				level = (int)al.get(i).getLevel();
				memname = (String)al.get(i).getMemname();
				memgender = (String)al.get(i).getMemgender();
				memphone = (String)al.get(i).getMemphone();
				memtel = (String)al.get(i).getMemtel();
				memaddress = (String)al.get(i).getMemaddress();
				mememail = (String)al.get(i).getMememail();
				emailagree = (String)al.get(i).getEmailagree();
				joinday = (String)al.get(i).getJoinday();
			}
		%>
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
			<h1>개인 정보 수정 페이지</h1>
			<form action="#">
				<div>회원 가입일 : <%=joinday %><input type="hidden" value="<%=joinday %>" name="joinday"></div>
				<div>회원번호 : <%=memno %><input type="hidden" value="<%=memno %>" name="memno"></div>
				<div>이름 : <input type="text" value="<%=memname %>" name="memname"></div>
				<div><input type="hidden" value="<%=memgender %>" name="memgender"></div>
				<div><input type="hidden" value="<%=level %>" name="authno"></div>
				<div>핸드폰 번호 : <input type="text" value="<%=memphone %>" name="memphone"></div>
				<div>전화 번호 : <input type="text" value="<%=memtel %>" name="memtel"></div>
				<div>주소 : <input type="text" value="<%=memaddress %>" name="memaddress"></div>
				<div>이메일 : <input type="text" value="<%=mememail %>" name="mememail"></div>
				<div>이메일 수신 동의 : <input type="text" value="<%=emailagree %>" name="emailagree"></div>
				<input type="hidden" value="<%=level %>" name="level">
				<button type="submit">변 경</button>
				<button type="reset">취 소</button>
			</form>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>