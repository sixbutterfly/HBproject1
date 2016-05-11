<%@page import="java.util.StringTokenizer"%>
<%@page import="com.hb.model.curriculum.curriculumDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커리큘럼 페이지</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav1.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script>
	function checkLogin() {
		if ($('#checkLogin').val()=='null') {
			alert("로그인 후 커리큘럼 신청이 가능합니다.");
		}
	}
</script>
<style>
	.title p{
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
	h3 {
		display: inline-block;
		margin: 10px 0px;
	}
	hr {
		width: 100%;
		height: 3px;
		background-color: silver;
		border: none;
		margin: 10px 0px;
	}
	.direction {
		padding-left: 80%;
		font-size: 8pt;
	}
	a{
		text-decoration: none;
		color: black;
	}
	.table1 {
		float: right;
		width: 480px;
		border-style: hidden;
		margin-right: 30px;
		margin-top: 10px;
		font-size: 14pt;
	}
	.register {
		margin-bottom: 10px;
		margin-left: 42%;
		margin-top: 0px;
	}
	.register a {
		text-decoration: none;
	}
</style>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav2.jsp" %>
		
		<!-- content start -->
		<div class="title">
			<p>REGULAR CURRICULUM</p>
			<span>취업교육과정</span>
		</div>
	
		<span class="direction">
				<a href='index.korean'>
					<span>
						HOME
					</span>
				</a> &gt;
				<a href='registerInfo.korean'>
					<span>
						취업교육과정
					</span>
				</a>
			</span>
		<br/>
		
		<hr/>
		<%
			ArrayList<curriculumDto> array = (ArrayList<curriculumDto>)request.getAttribute("array");
			String imgName="";
			for(int i=0; i<array.size(); i++) {
				String a = array.get(i).getCurName();
				String b ="";
				String result1 ="";
				String result2 ="";
				String d ="";
				String e ="";
				StringTokenizer st = new StringTokenizer(a, "(");
				while(st.hasMoreElements()) {
					b = (String)st.nextElement();
					if(st.hasMoreElements()) {
						result1 = (String)st.nextElement();
					}
					if(result1=="" || result1==null) {
						result1=b;
					}
				}
				
				StringTokenizer st2 = new StringTokenizer(result1, ")");
				while(st2.hasMoreElements()) {
					result2 = (String)st2.nextElement();
					if(st2.hasMoreElements()) {
						e = "";
						e = (String)st2.nextElement();
					}
				}
				String result3 = result2.toLowerCase();
				
				if("java".equals(result3)) {
					imgName="java1.jpg";
				} else if("web".equals(result3)) {
					imgName="web.jpg";
				} else {
					imgName="framework.png";
				}
		%>
		<img src="<%=request.getContextPath() %>/imgs/<%=imgName %>" style="width:228px; height:289px;">

		<table class="table1">
		<tr><td><strong>교육과목</strong></td><td> : </td><td><%=array.get(i).getCurName() %></td></tr>
		<tr><td><strong>교육기간</strong></td><td> : </td><td>[주중반] <%=array.get(i).getCurDate() %></td></tr>
		<tr><td></td><td> : </td><td>[주말반] <%=array.get(i).getCurDateEnd() %></td></tr>
		<tr><td><strong>교육일정</strong></td><td> : </td><td>[주중반] 총 160시간 월~금 09:00~18:00</td></tr>
		<tr><td></td><td> : </td><td>[주말반] 총 64시간 토,일 09:00~18:00</td></tr>
		<tr><td><strong>교육장소</strong></td><td> : </td><td>한빛 건대교육센터</td></tr>
		<tr><td><strong>모집인원</strong></td><td> : </td><td><%=array.get(i).getCurSupply() %> 명</td></tr>
		<tr><td><strong>교육대상</strong></td><td> : </td><td>재직자 환급, 일반인, 대학생</td></tr>
		<tr><td><strong>교육비용</strong></td><td> : </td><td>전화/온라인 문의</td></tr>
		<tr><td><strong>문의전화</strong></td><td> : </td><td>02-707-1480</td></tr>
		</table>
		<hr/>
		<%
		}
		%>
		
		<div class="register">
		<% 
			String id = (String)request.getSession().getAttribute("id");
		%>	
			<a href="resisterController.korean"><input type="hidden" id="checkLogin" value="<%=id %>">
				<img src="<%=request.getContextPath() %>/imgs/btn.jpg" onclick="checkLogin()">
			</a>
			<a href="detailController.korean">
				<img src="<%=request.getContextPath() %>/imgs/curriculumdetailBtn.png">
			</a>
		</div>
		<br/>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>