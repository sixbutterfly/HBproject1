<%@page import="com.hb.model.member.MemberDto"%>
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
	#detailcon>div :hover{
		list-style: none;
		background-color: rgba(204,229,255,0.5);
	}
	/* span{
		margin-left: 43px;
	} */
	.detailmenu{
		width:100%;
		background-color: rgba(204,229,255,0.5);
		margin-top: 34px;
	}
	.detailmenu>div{
		text-align: center;
		width: 11.8%;
		display: inline-block;
	}
	.title{
		color: #666;
		margin-left: 20px;
		margin-top: 20px;	
	}
	.title>p{
		font-size: 30pt;
		font-style: oblique;
	}
	.title>span{
		color: #666;
		font-size: 15pt;
		font-style: normal;
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
	#selauth{
		float:right;
		margin-top: 4px;
   		margin-bottom: 6px;
   		margin-right: 18px;
	}
	hr {
	width: 100%;
	background-color: #ddd;
	height: 3px;
	border: none;
	}
	.no9{
	display:none;
	}
	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#selauth').click(function(){
			if($('#selauth').val()=="all"){
				$('.no0').css('display','block');
				$('.no1').css('display','block');
				$('.no2').css('display','block');
				$('.no3').css('display','block');
				$('.no4').css('display','block');
				$('.no5').css('display','block');
			}else if($('#selauth').val()=="guest"){
				$('.no0').css('display','block');
				$('.no1').css('display','none');
				$('.no2').css('display','none');
				$('.no3').css('display','none');
				$('.no4').css('display','none');
				$('.no5').css('display','none');
			}else if($('#selauth').val()=="admin"){
				$('.no0').css('display','none');
				$('.no1').css('display','block');
				$('.no2').css('display','none');
				$('.no3').css('display','none');
				$('.no4').css('display','none');
				$('.no5').css('display','none');
			}else if($('#selauth').val()=="sale"){
				$('.no0').css('display','none');
				$('.no1').css('display','none');
				$('.no2').css('display','block');
				$('.no3').css('display','none');
				$('.no4').css('display','none');
				$('.no5').css('display','none');
			}else if($('#selauth').val()=="teacher"){
				$('.no0').css('display','none');
				$('.no1').css('display','none');
				$('.no2').css('display','none');
				$('.no3').css('display','block');
				$('.no4').css('display','none');
				$('.no5').css('display','none');
			}else if($('#selauth').val()=="student"){
				$('.no0').css('display','none');
				$('.no1').css('display','none');
				$('.no2').css('display','none');
				$('.no3').css('display','none');
				$('.no4').css('display','block');
				$('.no5').css('display','none');
			}else if($('#selauth').val()=="finish"){
				$('.no0').css('display','none');
				$('.no1').css('display','none');
				$('.no2').css('display','none');
				$('.no3').css('display','none');
				$('.no4').css('display','none');
				$('.no5').css('display','block');
			}
		});
		
	});
</script>
</head>
<body vlink="black" alink="black" link="black">
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
		<span>회원 관리</span>
		<hr/>
	</div>

	<div>
		<select id="selauth" name="selauth">
			<option value="all">전체보기</option>
			<option value="guest">회원</option>
			<option value="admin">행정부</option>
			<option value="sale">영업부</option>
			<option value="teacher">강사</option>
			<option value="student">학생</option>
			<option value="finish">수료자</option>
		</select>
	</div>
	<div class="detailmenu">
		<div>회원번호</div>
			<div style="width:8%;">소속</div>
			<div>이름</div>
			<div style="width:10%;">성별</div>
			<div style="width:12.3%;">핸드폰번호</div>
			<div style="margin-left:15px;">메일</div>
			<div style="font-size: 10pt; margin-left:15px;">메일 수신여부</div>
			<div>가입일</div>
	</div>
	
	<%
		ArrayList<MemberDto> arr = (ArrayList<MemberDto>)request.getAttribute("list");
				for(MemberDto dto:arr){
		%>
		<div id="detailcon" >
			<div class="no<%=dto.getLevel()%>">
			<a href="memdetail.korean?idx=<%=dto.getMemno()%>" >
			<div class="seeall"><%=dto.getMemno()%></div>
			<div class="seeall" style="width:8%;">
			<% if(dto.getLevel()==0){%>회원
			<% }else if(dto.getLevel()==1){%>행정부
			<% }else if(dto.getLevel()==2){%>영업부
			<% }else if(dto.getLevel()==3){%>강사
			<% }else if(dto.getLevel()==4){%>학생
			<% }else if(dto.getLevel()==5){%>수료자
			<% }%>
			</div>
			<div class="seeall"><%=dto.getMemname()%></div>
			<div class="seeall" style="width:10%;"><%=dto.getMemgender()%></div>
			<div class="seeall" style="width:12.3%;"><%=dto.getMemphone()%></div>
			<div class="seeall">
			<% if(dto.getMememail().equals("@")){%>-
			<%}else%><%=dto.getMememail()%>
			</div>
			<div class="seeall" style="margin-left:35px;">
			<% if(dto.getEmailagree().equals("y")){%><label style="color:blue;">동의</label>
			<%}else{%><label style="color: red;">거부</label>
			<%} %>
			</div>
			<div class="seeall"><%=dto.getJoinday()%></div>
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