<%@page import="com.hb.model.room.RoomDto"%>
<%@page import="com.hb.model.teacher.TeacherDto"%>
<%@page import="com.hb.model.student.StuDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.content {
	height: 800px;
}

.room ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px;
	border-bottom: 1px solid #eee;
	border-left: 1px solid #eee;
	width: 100%;
	font-family: "dotum";
	font-size: 12px;
}

.room ul.tabs li {
	float: left;
	text-align: center;
	cursor: pointer;
	width: 82px;
	height: 31px;
	line-height: 31px;
	border: 1px solid #eee;
	border-left: none;
	font-weight: bold;
	background: #fafafa;
	overflow: hidden;
	position: relative;
}

.room ul.tabs li.active {
	background: #FFFFFF;
	border-bottom: 1px solid #FFFFFF;
}

.room .tab_container {
	border: 1px solid #eee;
	border-top: none;
	clear: both;
	float: left;
	width: 248px;
	background: #FFFFFF;
}

.room .tab_content {
	padding: 5px;
	font-size: 12px;
	display: none;
}

.room .tab_container .tab_content ul {
	width: 100%;
	margin: 0px;
	padding: 0px;
}

.room .tab_container .tab_content ul li {
	padding: 5px;
	list-style: none
}

#container {
	width: 249px;
	margin: 0 auto;
}
</style>
<%
	ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");
	ArrayList<TeacherDto> tlist = (ArrayList<TeacherDto>)request.getAttribute("tlist");
%>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
						$(".stucheck").hide();
						$("#delbtn").hide();
						$(".roomselect").hide();
						//탭메뉴
						$(".room .tab_content").hide();
						$(".room .tab_content:first").show();

						$(".room ul.tabs li").click(
								function() {
									$(".room ul.tabs li").removeClass("active")
											.css("color", "#333");
									$(this).addClass("active").css("color",
											"darked");
									$(".room .tab_content").hide();
									var activeTab = $(this).attr("id");
									$("#" + activeTab + "_content").fadeIn();
								});
						//학생 배정
						//추가하기
						$("#add").click(
								function() {
									window.open("addstu.korean", "학생 배정",
											"width=500 height=500");
								});
						//수정하기
						$("#modify").click(function() {

						});
						//삭제하기
						$("#del").click(function() {
							$("#initbtn").hide();
							$(".stucheck").show();
							$("#delbtn").show();
						});
						//학생 삭제 완료
						$("#delok").click(function() {
							$("#initbtn").show();
							$(".stucheck").hide();
							$(".stucheck").attr("checked", false);
							$("#delbtn").hide();
						});
						$("#cancle").click(function() {
							$("#initbtn").show();
							$("#stucheck").hide();
							$("#delbtn").hide();
						});
						$("#room").change(function() {
							console.log("뿌뿌");
						});

						//강사 배정
						$("#btn3").hide();
						//배정하기
						$("#btn2").click(function() {
											$(".roomlist").hide();
											$(".roomselect").show();
											$("#btn3").show();
											$(this).hide();
										});
						//수정 완료
						$("#btn3").click(function() {
							var tchlist = [];
							$('.tchlist').each(function(idx,item){
								tchlist[idx]= $(item).text();
							});
							var roomlist = [];
							$('.roomselect').each(function(idx,item){
								roomlist[idx] = $('#tch'+idx+' option:selected').attr("value");
							});
							$.ajax({
								    "url" : "assignroom.korean",
								    "data" : { "tchlist" : tchlist, "roomlist" : roomlist},
								    "success" : function(data) {
								    	var str = data;
								    	$('.roomlist').each(function(idx,item){
								    		console.log($(item).text(str.charAt(idx)));
										});
								        alert("썩쎄쓰!");
								    },
								    "error" : function() {
								        alert("에러났소!");
								    }
							});
							$(".roomlist").show();
							$(".roomselect").hide();
							$("#btn2").show();
							$(this).hide();
						});
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
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav5.jsp" %>
		
		<!-- content start -->
		<div class="room">
			<h1>강의실 관리</h1>
			<div>
				<!-- 탭 메뉴 -->
				<ul class="tabs">
					<li id="tab1" class="active">학생 관리</li>
					<li id="tab2">강사 관리</li>
				</ul>
				<div class="tab_container">
					<!-- 학생관리 메뉴 -->
					<div id="tab1_content" class="tab_content">
						<select id="room">
							<option value="1">1강의실</option>
							<option value="2">2강의실</option>
							<option value="3">3강의실</option>
						</select>
						<table>
							<tr>
								<th>학번</th>
								<th>이름</th>
								<th>과정명</th>
								<th>배정강의실</th>
							</tr>
							<tr>
								<%
									for(StuDto bean : slist){
								%>
								<td><%=bean.getStuno()%></td>
								<td><%=bean.getStuname()%></td>
								<td><%=bean.getCurname()%></td>
								<td><%=bean.getCurlocation()%></td>
								
								<td><input type="checkbox" class="stucheck" /></td>
							</tr>

							<%
								}
							%>
						</table>
						<div id="initbtn">
							<button id="add">추가하기</button>
							<button id="modify">수정하기</button>
							<button id="del">삭제하기</button>
						</div>
						<div id="delbtn">
							<button id="delok">삭제완료</button>
							<button id="cancle">취소</button>
						</div>
					</div>
					<!-- 강사관리 메뉴 -->
					<div id="tab2_content" class="tab_content">
						<table>
							<tr>
								<th>강사번호</th>
								<th>이름</th>
								<th>배정강의실</th>
							</tr>
							<tr>
								<%
									int tchidx = 0;
									for(TeacherDto bean : tlist){
								%>
								<td class="tchlist"><%=bean.getTchno()%></td>
								<td><%=bean.getTchname()%></td>
								<td class="roomlist"><%=bean.getRoomno()%></td>
								<td class="roomselect">
									<select id = "tch<%=tchidx++%>">
								<%ArrayList<RoomDto> rlist = (ArrayList<RoomDto>)request.getAttribute("rlist"); 
									for(RoomDto bean2 : rlist){
										%>
										<option value = "<%=bean2.getRoomno()%>"><%=bean2.getRoomno() %></option>
								<%
									}
								%>
									</select>
								</td>
								<td><input type="checkbox" class="stucheck" /></td>
							</tr>

							<%
								}
							%>
						</table>
						<button id="btn2">강사배정</button>
						<button id="btn3">수정완료</button>
					</div>
				</div>
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