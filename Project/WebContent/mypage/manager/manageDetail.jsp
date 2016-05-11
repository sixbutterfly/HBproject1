<%@page import="com.hb.model.member.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>권한 수정</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/loginForm.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
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
	.subtitle{
		font-size: 20pt;
		text-align: center;
	}
	.ul{
		font-size: 15pt;
	}
	.ul li{
		margin-left: 50px;
	}
	button{
		margin-right: 20px;
    	width: 50px;
	}
	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#submit').click(function(){
			var y;
			y=confirm('수정하시겠습니까?');
			if (y)
				{
					$('submit').submit();
				}
			else{
				return false;
			}
		});
		
		if($('#emailchk').val()=="@"){
			$('#emailchk').next().text("-");
		}else if($('#emailchk').val().match(/^@(.+)$/)){
			$('#emailchk').next().text("-");
		}else{
			$('#emailchk').next().text($('#emailchk').val());
		}
		
		if($('#level').val()==0){
			$('select>option:eq(0)').css('display','none');
		}else if($('#level').val()==1){
			$('select>option:eq(1)').css('display','none');
		}else if($('#level').val()==2){
			$('select>option:eq(2)').css('display','none');
		}else if($('#level').val()==3){
			$('select>option:eq(3)').css('display','none');
		}else if($('#level').val()==4){
			$('select>option:eq(4)').css('display','none');
		}else if($('#level').val()==5){
			$('select>option:eq(5)').css('display','none');
		}
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
			<div class="title">
				<p>MY PAGE</p>
				<span>회원 권한 수정</span>
			</div>
	
	<%
		MemberDto dto = (MemberDto) request.getAttribute("dto");
		%>
		<div>
			<form action="managelevel.korean">
				<div class="subtitle"><b>[<%=dto.getMemname()%>]님의 정보</b></div>
				<input type="hidden" name="num" value="<%=dto.getMemno()%>"/>
				<input type="hidden" name="level" value="<%=dto.getLevel()%>" id="level"/>
				<ul class="ul">
					<li><span>회원 번호 : </span><%=dto.getMemno()%></li>
					<li><span>회원등급 : </span><% if(dto.getLevel()==0){%>회원
												<% }else if(dto.getLevel()==1){%>행정부
												<% }else if(dto.getLevel()==2){%>영업부
												<% }else if(dto.getLevel()==3){%>강사
												<% }else if(dto.getLevel()==4){%>학생
												<% }else if(dto.getLevel()==5){%>수료자
												<% }%>
												<select name="chlevel">
													<option value="0" id="mem">회원</option>
													<option value="1" id="manage">행정부</option>
													<option value="2" id="sales">영업부</option>
													<option value="3" id="teacher">강사</option>
													<option value="4" id="student">학생</option>
													<option value="5">수료자</option>
												</select>
					</li>
					<li><span>성별 : </span><%=dto.getMemgender()%></li>
					<li><span>가입일 : </span><%=dto.getJoinday()%></li>
					<li><span>전화번호 : </span><% if(dto.getMemtel()==null){%>없음
												<%}else%><%=dto.getMemtel()%>
					</li>
					<li><span>핸드폰번호 : </span><%=dto.getMemphone()%></li>
					<li><span>이메일 수신 동의 : </span><%if(dto.getEmailagree().equals("y")){%>수신
														<%}else {%>거부
														<%} %>
					</li>
					<li><span>주소 : </span><%=dto.getMemaddress()%></li>
				</ul>

				<div style="text-align:center">
					<button type="submit" id="submit">수정</button>
					<button type="reset" onclick="history.back();">취소</button>
				</div>
			</form>
		</div>
			<!-- content end -->
	<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</body>
</html>