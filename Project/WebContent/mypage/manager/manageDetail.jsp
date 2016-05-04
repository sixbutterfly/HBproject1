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
	.subhead{
		font-size: 19pt;
		margin-bottom: 17px;
		margin-top: 15px;
		margin-left: 120px;
	}
	.subtitle{
		font-size: 25pt;
		margin-bottom: 10px;
   	 	margin-left: 20px;
	}
	hr {
	width: 100%;
	background-color: silver;
	height: 2px;
	border: none;
}
	.conarray{
		display: inline-block;
		margin-left: 74px;
		font-size: 15pt;
	}
	.infor{
		margin-top: 5px;
		margin-bottom: 20px;
	}
	button{
		margin-right: 23px;
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
		<p class="subtitle"><b>회원 권한 수정</b></p>
		<hr/>
	</div>
	
	<%
		MemberDto dto = (MemberDto) request.getAttribute("dto");
		%>
		<div>
			<form action="managelevel.korean">
			<div>
			<div class="subhead"><b style="background-color: #FFEDAA;"><%=dto.getMemname()%>님의 정보</b></div>
			<div  style="background-color: rgba(214, 255, 231, 0.61);">
			<div class="conarray">
			<div class="infor">회원 번호 : <%=dto.getMemno()%></div>
			<input type="hidden" name="num" value="<%=dto.getMemno()%>">
			<div class="infor">회원등급 : <% if(dto.getLevel()==0){%>회원
			<% }else if(dto.getLevel()==1){%>행정부
			<% }else if(dto.getLevel()==2){%>영업부
			<% }else if(dto.getLevel()==3){%>강사
			<% }else if(dto.getLevel()==4){%>학생
			<% }else if(dto.getLevel()==5){%>수료자
			<% }%>
			<select name="chlevel">
				<option value="0">회원</option>
				<option value="1">행정부</option>
				<option value="2">영업부</option>
				<option value="3">강사</option>
				<option value="4">학생</option>
				<option value="5">수료자</option>
			</select></div>
			<div class="infor">성별 : <%=dto.getMemgender()%></div>
			<div class="infor">가입일 : <%=dto.getJoinday()%></div>
			</div>
			<div class="conarray">
			<div class="infor">전화번호 : <% if(dto.getMemtel()==null){%>없음
			<%}else%><%=dto.getMemtel()%>
			</div>
			<div class="infor">핸드폰번호 : <%=dto.getMemphone()%></div>
			<div class="infor">이메일 : <input type="hidden" value="<%=dto.getMememail()%>" id="emailchk"> <label></label>
			</div>
			<div class="infor">이메일 수신 동의 : <%if(dto.getEmailagree().equals("y")){%>수신
			<%}else {%>거부
			<%} %>
			</div>
			</div>
			<div class="infor conarray" style="display:block;">주소 : <%=dto.getMemaddress()%></div>
			</div>
			</div>
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