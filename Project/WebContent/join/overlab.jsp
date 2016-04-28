<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.hb.util.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
<%
	String id=request.getParameter("id");
	Connection con=DB.getConnection();
	String sql="select * from userinfo where id=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1,id);
	ResultSet rs=pstmt.executeQuery();
	boolean result=false;
	if(rs.next()){
	result=true;
	}
	rs.close();
	pstmt.close();
	con.close();
	
	response.setContentType("text/xml;charset=utf-8");
	PrintWriter pw=response.getWriter();
	pw.print("<?xml version=\"1.0\"encoding=\"UTF-8\"?>");
	pw.print("<data>");
	pw.print("<result>"+result+"</result>");
	pw.print("</data>");

%>
</script>
</head>
<body>

</body>
</html>