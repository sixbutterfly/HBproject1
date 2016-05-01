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
				<a href='index.do'>
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
		<img src="<%=request.getContextPath() %>/imgs/java1.jpg">

		<table class="table1">
		<tr><td><strong>교육과목</strong></td><td> : </td><td>자바(JAVA)개발자 과정</td></tr>
		<tr><td><strong>교육기간</strong></td><td> : </td><td>[주중반] 2016.05.02 ~ 2016.05.30</td></tr>
		<tr><td></td><td> : </td><td>[주말반] 2016.05.1 ~ 2016.05.29</td></tr>
		<tr><td><strong>교육일정</strong></td><td> : </td><td>[주중반] 총 160시간 월~금 09:00~18:00</td></tr>
		<tr><td></td><td> : </td><td>[주말반] 2016.05.1 ~ 2016.06.29</td></tr>
		<tr><td><strong>교육장소</strong></td><td> : </td><td>한빛 건대교육센터</td></tr>
		<tr><td><strong>교육대상</strong></td><td> : </td><td>재직자 환급, 일반인, 대학생</td></tr>
		<tr><td><strong>교육비용</strong></td><td> : </td><td>전화/온라인 문의</td></tr>
		<tr><td><strong>문의전화</strong></td><td> : </td><td>02-707-1480</td></tr>
		</table>
		
		<div class="register">
			<a href="resisterController.korean?title=자바(JAVA)개발자 과정">
				<img src="<%=request.getContextPath() %>/imgs/btn.jpg">
			</a>
			<a href="detailController.korean?title=자바(JAVA)개발자 과정">
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