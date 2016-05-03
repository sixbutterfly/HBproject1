<%@page import="com.hb.model.student.StuDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.title>span{
		margin: 0px 10px;
		font-size: 20pt;
	}
	.title{
		border-bottom: 3px solid #ddd;
		color: #666;
	}
</style>
</head>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			
			window.close();
		});
		$("#cancle").click(function(){
			window.close();
		});
	});
</script>
<body>
	
	<div class="title">
		<span>MY PAGE</span><br/>
		<span>수강 대기자 목록</span>
	</div>
	
	<table>
		<tr>
			<th></th><th>학번</th><th>이름</th><th>배정강의실</th>
		</tr>
			<%
				int checkidx = 0;
				ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");
				for(StuDto bean : slist){
			%>
		<tr>
			<td><input type = "checkbox" class = "checkbox" id = "checkidx<%=checkidx++%>"/></td>
				<td><%=bean.getStuno() %></td>
				<td><%=bean.getStuname() %></td>
				<td><%=bean.getRoomno() %></td>
		</tr>
			<%
				}
			%>
	</table>
	<button id = "submit">완료</button>
	<button id = "cancle">취소</button>
</body>
</html>