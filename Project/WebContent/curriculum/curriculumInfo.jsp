<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커리큘럼 페이지</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.bxslider.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
		  'auto':true,
		  'controls':false,
		  'slideWidth':1500,
		  });
	}); //ready end
</script>
<style>
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
		padding-left: 54%;
		font-size: 8pt;
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
		<%@include file="/templet/subnav0.jsp" %>
		
		<!-- content start -->
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/curriculum.png">
		<br/>
		<h3>자바(JAVA)개발자 입문과정</h3>
		<span class="direction">
				<a href='<%=request.getContextPath() %>/main.jsp'>
					<span>
						HOME
					</span>
				</a> &gt; 
				<a href='<%=request.getContextPath() %>/curriculum/curriculumInfo.jsp'>
					<span>
						정규교육신청
					</span>
				</a>
			</span>
		<br/>
		
		<hr/>
		<img src="<%=request.getContextPath() %>/imgs/java1.jpg">
		<table class="table1">
		<tr><td><strong>교육과목</strong></td><td> : </td><td>자바 프로그래밍</td></tr>
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
			<a href="<%=request.getContextPath() %>/curriculum/registerclassPage.jsp">
				<img src="<%=request.getContextPath() %>/imgs/btn.jpg">
			</a>
			<a href="<%=request.getContextPath() %>/curriculum/javacurriculumPage.jsp">
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