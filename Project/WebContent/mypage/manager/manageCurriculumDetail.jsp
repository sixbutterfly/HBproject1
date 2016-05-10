<%@page import="com.hb.model.sturoom.SturoomDto"%>
<%@page import="com.hb.model.curriculum.curriculumDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지</title>
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
			if(confirm("정보를 수정하시겠습니까?")){
				return true;
			}else{
				return false;
			}
		});
		$('#cur button').eq(1).click(function(){
			if(confirm("삭제한 정보는 복구할 수 업습니다.\n정말로 삭제하시겠습니까?")){
				return true;
			}else{
				return false;
			}
		});
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
		<%@include file="/templet/subnav5.jsp" %>
		
		<!-- content start -->
			<div class="title">
				<p>MY PAGE</p>
				<span>커리큘럼 수정</span>
			</div>
			
			<%
							curriculumDto dto = (curriculumDto)request.getAttribute("dto");
												ArrayList<SturoomDto> list = (ArrayList)request.getAttribute("list");
						%>
			
			<form action="curedit.korean">
			<div id="cur">
				<input type="hidden" name="curNo" value="<%=dto.getCurNo()%>"/>
				<ul>
					<li>커리큘럼 명 : <%=dto.getCurName()%></li>
					<li>교육 시작날짜 : <input type="date" name="curDate" value="<%=dto.getCurDate()%>"/></li>
					<li>교육 장소 : <select name="curLocation">
										<option value="<%=dto.getCurLocation()%>" selected="selected"><%=dto.getCurLocation()%></option>
									<%
										for(SturoomDto bean : list){
																		if(bean.getCurNo()==0){
									%>
										<option value="<%=bean.getRoomNo() %>강의실"><%=bean.getRoomNo() %>강의실</option>
									<%		}
										}	%>
									</select></li>
					<li>교육 인원 : <input type="number" min="0" max="20" name="curSupply" value="<%=dto.getCurSupply() %>"></li>
				</ul>
				<button type="submit">수정</button>
				<a href="curdelete.korean?curNo=<%=dto.getCurNo() %>"><button type="button">삭제</button></a>
				<a href="curriculum.korean"><button type="button">목록</button></a>
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