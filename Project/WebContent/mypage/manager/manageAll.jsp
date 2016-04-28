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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav0.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
<style type="text/css">
	#detailcon>div :hover{
		list-style: none;
		background-color:pink;
	}
	.content{
		height: 800px;
	}
	span{
		margin-left: 43px;
	}
	.detailmenu{
		width:100%;
		background-color: #fddad3;
	}
	.detailmenu>div{
		text-align: center;
		width: 11.8%;
		display: inline-block;
	}
	#detailcon>div>a{
		text-decoration: none;
	}
	#detailcon>div>a>div{
		width:100%;
		font-size: 10pt;
		text-align: center;
		width: 11.8%;
		display: inline-block;
		text-decoration: none;
	}
	#detailcon2{
		display: none;
	}
	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#selauth').click(function(){
			if($('#selauth').val()=="all"){
				$('.seeall').css('display','inline-block');
			}else{
				$('.seeall').css('display','none');
			}
		});
	});

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
		<p>회원 관리</p>
		<hr/>
	</div>
	<div>
		<select id="selauth" name="selauth">
			<option value="all">전체보기</option>
			<option value="guest">회원</option>
			<option value="student">학생</option>
			<option value="teacher">강사</option>
			<option value="finish">수료자</option>
			<option value="sale">영업부</option>
			<option value="admin">행정부</option>
		</select>
		<hr/>
	</div>
	<div class="detailmenu">
		<div>회원번호</div>
			<div>소속</div>
			<div>이름</div>
			<div>성별</div>
			<div>핸드폰번호</div>
			<div>메일</div>
			<div style="font-size: 11pt">메일 수신여부</div>
			<div>가입일</div>
	</div>
	
	<%
		ArrayList<MemberDto> arr = (ArrayList<MemberDto>)request.getAttribute("list");
				for(MemberDto dto:arr){
		%>
		<div id="detailcon">
			<div>
			<a href="memdetail.do?idx=<%=dto.getMemno()%>">
			<div class="seeall"><%=dto.getMemno()%></div>
			<div class="seeall"><%=dto.getAuthno()%></div>
			<div class="seeall"><%=dto.getMemname()%></div>
			<div class="seeall"><%=dto.getMemgender()%></div>
			<div class="seeall"><%=dto.getMemphone()%></div>
			<div class="seeall"><%=dto.getMememail()%></div>
			<div class="seeall"><%=dto.getEmailagree()%></div>
			<div class="seeall"><%=dto.getJoinday()%></div>
			</a>
			</div>
		</div>
		<%
			}
		%>
		
		<%
		ArrayList<MemberDto> arr2 = (ArrayList<MemberDto>)request.getAttribute("list");
				for(MemberDto dto2:arr){
		%>
		<div id="detailcon2">
			<div>
			<a href="memdetail.do?idx=<%=dto2.getMemno()%>">
			<div class="seestu"><%=dto2.getMemno()%></div>
			<div class="seestu"><%=dto2.getAuthno()%></div>
			<div class="seestu"><%=dto2.getMemname()%></div>
			<div class="seestu"><%=dto2.getMemgender()%></div>
			<div class="seestu"><%=dto2.getMemphone()%></div>
			<div class="seestu"><%=dto2.getMememail()%></div>
			<div class="seestu"><%=dto2.getEmailagree()%></div>
			<div class="seestu"><%=dto2.getJoinday()%></div>
			</a>
			</div>
		</div>
		<%
			}
		%>
			<!-- content end -->
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</body>
</html>