<%@page import="com.hb.model.sturoom.sturoomDto"%>
<%@page import="com.hb.model.curriculum.studyCurDto"%>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	.content>div>p{
		font-size: 30pt;
		font-style: oblique;
	}
	.content>div>span{
		font-size: 15pt;
	}
	.content>div{
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
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/subnav5.jsp" %>
		
		<!-- content start -->
			<div>
				<p>MY PAGE</p>
				<span>커리큘럼 수정</span>
			</div>
			
			<%
				studyCurDto dto = (studyCurDto)request.getAttribute("dto");
				ArrayList<sturoomDto> list = (ArrayList)request.getAttribute("list");
			%>
			
			<form action="curedit.korean">
			<div id="cur">
				<input type="hidden" name="curNo" value="<%=dto.getCurNo() %>"/>
				<ul>
					<li>커리큘럼 명 : <%=dto.getCurName() %></li>
					<li>교육 시작날짜 : <input type="date" name="curDate" value="<%=dto.getCurDate() %>"/></li>
					<li>교육 장소 : <select name="curLocation">
										<option value="<%=dto.getCurLocation() %>" selected="selected"><%=dto.getCurLocation() %></option>
									<%
										for(sturoomDto bean : list){
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