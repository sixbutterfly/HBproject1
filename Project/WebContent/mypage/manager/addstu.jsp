<%@page import="com.hb.model.sturoom.SturoomDto"%>
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
<%
	ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");
%>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//체크박스 전체 선택
		$("#allcheck").click(function(){
			if($("#allcheck").is(":checked")){
				$(".eachcheck").prop("checked",true);
			}else{
				$(".eachcheck").prop("checked",false);
			}
		});
		$("#submit").click(function(){
			var roomno = $("#roomlist").val();
	        var stulist = [];
	         <%
				for(StuDto bean : slist){
				%>
					if($("#checkbox<%=bean.getStuno()%>").is(":checked"))
						stulist.push(<%=bean.getStuno()%>);
				<%
				}
				%>
			$.ajax({
				 "url": "addstu.korean",
	              "data": {
	            	  "roomno" : roomno,
	            	  "stulist" : stulist
	              },
	              "success": function (data) {
	                alert("썩쎄쓰!");
	                window.opener.location.reload();
	                location.reload();
	              },
	              "error": function () {
	                alert("선택된 학생이 없소!");
	              }
			});
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
		배치할 강의실: 
		<select id = "roomlist"> 
					<%
						ArrayList<SturoomDto> rlist = (ArrayList<SturoomDto>)request.getAttribute("rlist"); 
						for(SturoomDto bean2 : rlist){
							%>
						<option value = "<%=bean2.getRoomNo()%>"><%=bean2.getRoomNo()%></option>
					<%
						}
					%>
		</select> 강의실
		</tr>
		<tr>
			<th><input type = "checkbox" id = "allcheck"></th><th>학번</th><th>이름</th><th>배정강의실</th>
		</tr>
			<%
				int checkidx = 0;
				for(StuDto bean : slist){
			%>
		<tr>
				<td><input type = "checkbox" id = "checkbox<%=bean.getStuno()%>" class = "eachcheck"></td>
				<td class="stulist"><%=bean.getStuno() %></td>
				<td><%=bean.getStuname() %></td>
				<td>없음</td>
		</tr>
			<%
				}
			%>
	</table>
	<button id = "submit">추가</button>
	<button id = "cancle">취소</button>
</body>
</html>