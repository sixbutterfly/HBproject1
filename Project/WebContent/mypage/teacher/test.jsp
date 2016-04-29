<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a =0;
		int b =1;
		int c =2;
		ArrayList<Integer> al = new ArrayList<Integer>();;
		al.add(a);
		al.add(b);
		al.add(c);
		while(true) {
	%>
	<%=al.get(0) %>
	<%		
		}
	%>
</body>
</html>