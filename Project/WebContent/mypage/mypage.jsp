<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/grid.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/nav.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css" />
<style type="text/css">
.eachmenu>.grid2 {
	<!--display: none;-->
}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var level = <%=(Integer) request.getAttribute("level")%>
	switch (level) {
		case 0:
			$(".guest").css("display", "initial");
			break;
		case 1:
			$(".student").css("display", "initial");
			break;
		case 2:
			$(".teacher").css("display", "initial");
			break;
		case 3:
			$(".sales").css("display", "initial");
			break;
		case 4:
			$(".manager").css("display", "initial");
			break;
		}
	});
</script>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp"%>
		<!-- nav -->
		<%@include file="/templet/nav.jsp"%>
		<!-- aside1 -->
		<%@include file="/templet/subnav5.jsp"%>
		
		<!-- content start -->
		<div class="grid2 common">
			<a href="editinfo.do">개인 정보 수정</a>
		</div>
		<div class="eachmenu">
			<div class="grid2 guest">
				<a href="applist.do">신청한 강의</a>
			</div>
			<div class="grid2 student">
				<a href="viewatt.do">출결 보기</a>
			</div>
			<div class="grid2 student">
				<a href="viewgrade.do">성적 보기</a>	
			</div>
			<div class="grid2 teacher">
				<a href="addatt.do">출결 입력</a>
			</div>
			<div class="grid2 teacher">
				<a href="addgrade.do">성적 입력</a>
			</div>
			<div class="grid2 sales">
				<a href="waitinlist.do">수강 대기자</a>
			</div>
			<div class="grid2 manager">
				<a href="allmember.do">회원관리</a>
			</div>
			<div class="grid2 manager">
				<a href="finallist.do">수강 최종 승인</a>
			</div>
			<div class="grid2 manager">
				<a href="room.do">강의실 배치</a>
			</div>
			<div class="grid2 manager">
				<a href="teacher.do">강사 관리</a>
			</div>
			<div class="grid2 manager">
				<a href="curriculum.do">커리큘럼 관리</a>
			</div>
		</div>
		<!-- content end -->

		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp"%>
		<!-- footer -->
		<%@include file="/templet/footer.jsp"%>
	</div>

</body>
</html>