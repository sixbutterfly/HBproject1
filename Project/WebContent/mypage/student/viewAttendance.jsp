<%@page import="com.hb.model.attend.AttdDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
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
	.attdstuList{
		width: 780px;
	}

	*{
		margin: 0px;
		padding: 0px;
	}
	h2{
		text-align: center;
		margin: 10px;
	}
	h3{
		text-align: center;
		margin: 30px;
	}	
	.attdStatus{
		float:right;
		margin : 30px;
		margin-right: 50px;	
	}	
	.attdStatus>span{
		font-size: 13px;
		margin-right: 30px;
	}
	.attdValue{
		margin-left: 20px;
	}
		
	.attdValue>div>div{
		float: left;
		width: 70px;
		height: 70px;
		border: 1px solid black;
	}
	
	.attdValue>div>div>p{
		font-size: 25px;
		text-align: center;
	}
	
	.clear{
		clear:both;
	}
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
	
	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/attend.js" charset="utf-8"></script>

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
			<span>출결 확인</span>
		</div>
		
		<div class="attdstuList">
		<h3><p><%= request.getAttribute("stuName") %>님의 출결 현황</h3>
			<h3><p><%=new SimpleDateFormat("yyyy년 MM월").format(new Date()) %></h3>
			<div class="attdStatus">					
				<span>● 출석</span><span>X 결석</span><span>▲ 지각</span><span>■ 조퇴</span><span>- 미등록</span>		
			</div>
			<div class="clear"></div>
			<div class="attdValue">
				<%	
					ArrayList<AttdDto> attdList = (ArrayList<AttdDto>)request.getAttribute("attdList");
					for(AttdDto bean : attdList){
				%>
				<div>
					<div>1 <p><%= bean.getAttdValue1() %></p></div>							
					<div>2 <p><%= bean.getAttdValue2() %></p></div>			
					<div>3 <p><%= bean.getAttdValue3() %></p></div>			
					<div>4 <p><%= bean.getAttdValue4() %></p></div>			
					<div>5 <p><%= bean.getAttdValue5() %></p></div>			
					<div>6 <p><%= bean.getAttdValue6() %></p></div>			
					<div>7 <p><%= bean.getAttdValue7() %></p></div>	
				</div>
				<div>		
					<div>8 <p><%= bean.getAttdValue8() %></p></div>			
					<div>9 <p><%= bean.getAttdValue9() %></p></div>			
					<div>10 <p><%= bean.getAttdValue10() %></p></div>			
					<div>11 <p><%= bean.getAttdValue11() %></p></div>			
					<div>12 <p><%= bean.getAttdValue12() %></p></div>			
					<div>13 <p><%= bean.getAttdValue13() %></p></div>			
					<div>14 <p><%= bean.getAttdValue14() %></p></div>
				</div>
				<div>			
					<div>15 <p><%= bean.getAttdValue15() %></p></div>			
					<div>16 <p><%= bean.getAttdValue16() %></p></div>			
					<div>17 <p><%= bean.getAttdValue17() %></p></div>			
					<div>18 <p><%= bean.getAttdValue18() %></p></div>			
					<div>19 <p><%= bean.getAttdValue19() %></p></div>			
					<div>20 <p><%= bean.getAttdValue20() %></p></div>			
					<div>21 <p><%= bean.getAttdValue21() %></p></div>
				</div>
				<div>			
					<div>22 <p><%= bean.getAttdValue22() %></p></div>			
					<div>23 <p><%= bean.getAttdValue23() %></p></div>			
					<div>24 <p><%= bean.getAttdValue24() %></p></div>			
					<div>25 <p><%= bean.getAttdValue25() %></p></div>			
					<div>26 <p><%= bean.getAttdValue26() %></p></div>			
					<div>27 <p><%= bean.getAttdValue27() %></p></div>			
					<div>28 <p><%= bean.getAttdValue28() %></p></div>
				</div>
				<div>			
					<div>29 <p><%= bean.getAttdValue29() %></p></div>			
					<div>30 <p><%= bean.getAttdValue30() %></p></div>			
					<div>31 <p><%= bean.getAttdValue31() %></p></div>
				</div>
				<div class="clear"></div>			
				<%		
					}
				%>
		 	</div>
		 </div>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>