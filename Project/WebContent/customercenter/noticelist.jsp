<%@page import="com.hb.model.notice.noticeDao"%>
<%@page import="com.hb.model.notice.noticeDto"%>
<%@page import="com.hb.model.register.registerDto"%>
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
	.table{
		width: 700px;
		margin: 10px auto;
	}
	.table th{
		background-color: rgba(204,229,255,0.5);
	}
	.table tr{
		text-align: center;
	}
	.table tr a{
		text-decoration: none;
		color: black;
	}
	.table tr a:hover{
		color: #06c;
	}
	form{
		width: 400px;
		margin: 10px auto;
	}
	form a{
		text-decoration: none;
		color: black;
	}
	p a{
		text-decoration: none;
		color: gray;
	}
	p a:hover{
		color: #06c;
	}
	.content button{
		width: 50px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var level = <%= (Integer)session.getAttribute("level") %>;
		console.log(level);
	switch (level) {
		case null:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 0:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 1:
			$('form button:eq(1)>a').click(function(){
				return true;
			});
			break;
		case 2:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 3:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 4:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		case 9:
			$('form button:eq(1)>a').click(function(){
				alert("접근 권한이 없습니다.");
				return false;
			});
			break;
		}
	});//ready end
</script>
</head>
<%
	String sreach = request.getParameter("sreach");
	String keyword = request.getParameter("keyword");
	String p = request.getParameter("page");
	int total = 0;
	int limit = 0;
	int pcnt = 10;
	int pStart = 1;
	if(p==null||"".equals(p)){
		p="1";
	}else{
		pStart = (Integer.parseInt(p)-1)*pcnt+1;
	}
	int pEnd = pStart+(pcnt-1);
	if("".equals(sreach)||sreach==null){
		sreach="";
	}if("".equals(keyword)||keyword==null){
		keyword="";
	}else{
		keyword = "where "+keyword+" like '%"+sreach+"%'";
	}
	//sreach=sreach.trim();
	
	noticeDao dao = new noticeDao();
	ArrayList<noticeDto> list =  dao.selectAll(keyword, pStart, pEnd);
%>			
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/loginForm.jsp" %>
		<%@include file="/templet/subnav4.jsp" %>
		
		<!-- content start -->
			<div class="title">
				<p>CUSTOMER CENTER</p>
				<span>공지사항</span>
			</div>
			
				<table class="table">
					<tr><th>글번호</th><th>제목</th><th>작성일</th><th>작성자</th></tr>
					<%
						for(noticeDto dto : list){
					%>
					<tr>
						<td><%=dto.getRn() %></td>
						<td><a href="noticedetail.korean?notNo=<%=dto.getNotNo() %>"><%=dto.getTitle() %></a></td>
						<td><%=dto.getNotDate() %></td>
						<td><%=dto.getName() %></td>
					</tr>
					<%} %>
				</table>
			<p align="center">
			<%
				noticeDto dto2 = (noticeDto)request.getAttribute("cnt");
				total = dto2.getTotal();
				//System.out.println(total);
				int shownum = 5;
				limit = (total-1)/pcnt+1;
				int pstart = ((Integer.parseInt(p)-1)/shownum)*shownum+1;
				if(Integer.parseInt(p)!=1){
					out.print("<a href=\"notice.korean?file=list&page="+(Integer.parseInt(p)-1)+"\">[이전]</a>");
				}
				for(int i = pstart; i<pstart+shownum; i++){ %>
					<a href="notice.korean?file=list&page=<%=i%>">[<%=i%>]</a>
			<%
					if(i==limit){break;}
				}
				if(Integer.parseInt(p)<limit){
					out.print("<a href=\"notice.korean?file=list&page="+(Integer.parseInt(p)+1)+"\">[다음]</a>");
				}
			%>
			</p>
			
			<form action="notice.korean">
				<select name="keyword">
					<option value="title">제목</option>
					<option value="content" >내용</option>
					<option value="name" >글쓴이</option>
				</select>
				<input type="text" name="sreach">
				<button type="submit">검색</button>
				<button type="button"><a href="noticeaddform.korean">글쓰기</a></button>
			</form>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>