<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hb.model.attend.AttdDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav0.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<style type="text/css">
	.content{
		height: 800px;
	}
	h1{
		text-align: center;
	}
	
	table{
		width: 780px;
		border: 1px solid black;
	}
	
	th{
		background-color:dda0dd;
		border: 1px solid black;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

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
		<h1><%= request.getAttribute("stuName") %> 님의 출결 현황 </h1>
		
		<table>
				<tr>
					<th>번호</th><th>이름</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th>
					<th>9</th><th>10</th><th>11</th><th>12</th><th>13</th><th>14</th><th>15</th><th>16</th><th>17</th><th>18</th>
					<th>19</th><th>20</th><th>21</th><th>22</th><th>23</th><th>24</th><th>25</th><th>26</th><th>27</th><th>28</th>
					<th>29</th><th>30</th><th>31</th>
				</tr>
				<%	
					ArrayList<AttdDto> attdList = (ArrayList<AttdDto>)request.getAttribute("attdList");
					for(AttdDto bean : attdList){
				%>
					<tr>
						<td><%= bean.getAttdNo() %></td>
						<td><%= bean.getMemName() %></td>
						<td><%= bean.getAttdValue1() %> </td>
						<td><%= bean.getAttdValue2() %> </td>
						<td><%= bean.getAttdValue3() %> </td>
						<td><%= bean.getAttdValue4() %> </td>
						<td><%= bean.getAttdValue5() %> </td>
						<td><%= bean.getAttdValue6() %> </td>
						<td><%= bean.getAttdValue7() %> </td>
						<td><%= bean.getAttdValue8() %> </td>
						<td><%= bean.getAttdValue9() %> </td>
						<td><%= bean.getAttdValue10() %> </td>
						<td><%= bean.getAttdValue11() %> </td>
						<td><%= bean.getAttdValue12() %> </td>
						<td><%= bean.getAttdValue13() %> </td>
						<td><%= bean.getAttdValue14() %> </td>
						<td><%= bean.getAttdValue15() %> </td>
						<td><%= bean.getAttdValue16() %> </td>
						<td><%= bean.getAttdValue17() %> </td>
						<td><%= bean.getAttdValue18() %> </td>
						<td><%= bean.getAttdValue19() %> </td>
						<td><%= bean.getAttdValue20() %> </td>
						<td><%= bean.getAttdValue21() %> </td>
						<td><%= bean.getAttdValue22() %> </td>
						<td><%= bean.getAttdValue23() %> </td>
						<td><%= bean.getAttdValue24() %> </td>
						<td><%= bean.getAttdValue25() %> </td>
						<td><%= bean.getAttdValue26() %> </td>
						<td><%= bean.getAttdValue27() %> </td>
						<td><%= bean.getAttdValue28() %> </td>
						<td><%= bean.getAttdValue29() %> </td>
						<td><%= bean.getAttdValue30() %> </td>
						<td><%= bean.getAttdValue31() %> </td>
															
					</tr>
				<%		
					}
				%>
								
			</table>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>