<%@page import="com.hb.model.student.StuDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<h1>수강 대기자 목록</h1>
	<table>
		<tr>
			<th></th><th>학번</th><th>이름</th><th>배정강의실</th>
		</tr>
			<%
				ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");
				for(StuDto bean : slist){
					%>
		<tr>
			<td><input type = "checkbox"/></td>
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