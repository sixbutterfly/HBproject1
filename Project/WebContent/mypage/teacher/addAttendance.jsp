<%@page import="com.hb.model.attend.AttdDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
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
	
	td{
		border: 1px solid black;
	}	
	
	button{
		display:inline-block;
		width: 50px;
		height: 30px;
	}
	
	.left{
		float: left;
		margin-left : 10px;
	}
	
	.right{
		float:right;
		margin-right : 30px;
	}
	
	.right>input{
		margin-left: 10px;
	}
	
	#ins{
		margin-left: 300px;
	}	
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/attend.js" charset="utf-8"></script>

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
			
			<h1> 출결 입력</h1>
			<div>			
			<p><span class="left"><input type="date" name="attdDate" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>"/> </span>
			<%
				int authNo = (Integer)session.getAttribute("level");
				if(authNo == 3){					
			%> 
					<span class="right">담당강사 : <%= request.getAttribute("tchName") %> 강사님</span></p>
					<br/><br/>
					<p><span class="left">강의실 : <%= request.getAttribute("roomNo") %>번 강의실</span>
			<%  }else if(authNo == 9){ %>
					<span class="right">담당강사 : 
					<select name="attdStatus">
					  <option value="●">● 출석</option>					  
					</select> <%= request.getAttribute("tchName") %> 강사님</span></p>
			
					<br/><br/>
					<p><span class="left">강의실 : <%= request.getAttribute("roomNo") %>번 강의실</span>
			<%  }%>
						
			<span class="right"><select name="attdStatus">
					  <option value="●">● 출석</option>
					  <option value="X">X 결석</option>
					  <option value="▲">▲ 지각</option>
					  <option value="■">■ 조퇴</option>
					  <option value="-">- 미등록</option>
			</select></span></p>
			</div>
			<table>
				<tr class="attendHeader">
					<th><input type="checkbox" name="checkAll"/></th><th>이름</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th>
					<th>9</th><th>10</th><th>11</th><th>12</th><th>13</th><th>14</th><th>15</th><th>16</th><th>17</th><th>18</th>
					<th>19</th><th>20</th><th>21</th><th>22</th><th>23</th><th>24</th><th>25</th><th>26</th><th>27</th><th>28</th>
					<th>29</th><th>30</th><th>31</th>
				</tr>
				 <%	
					ArrayList<AttdDto> attdList = (ArrayList<AttdDto>)request.getAttribute("attdList");
					for(AttdDto bean : attdList){
				%>
					<tr class="attendBody">
						<td><input type="checkbox" name="attdNo" value="<%= bean.getAttdNo() %>"/><%= bean.getAttdNo() %></td>
						<td><%= bean.getMemName() %></td>
						<td><input type="text" name="val1" value="<%= bean.getAttdValue1() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val2" value="<%= bean.getAttdValue2() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val3" value="<%= bean.getAttdValue3() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val4" value="<%= bean.getAttdValue4() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val5" value="<%= bean.getAttdValue5() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val6" value="<%= bean.getAttdValue6() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val7" value="<%= bean.getAttdValue7() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val8" value="<%= bean.getAttdValue8() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val9" value="<%= bean.getAttdValue9() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val10" value="<%= bean.getAttdValue10() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val11" value="<%= bean.getAttdValue11() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val12" value="<%= bean.getAttdValue12() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val13" value="<%= bean.getAttdValue13() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val14" value="<%= bean.getAttdValue14() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val15" value="<%= bean.getAttdValue15() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val16" value="<%= bean.getAttdValue16() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val17" value="<%= bean.getAttdValue17() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val18" value="<%= bean.getAttdValue18() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val19" value="<%= bean.getAttdValue19() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val20" value="<%= bean.getAttdValue20() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val21" value="<%= bean.getAttdValue21() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val22" value="<%= bean.getAttdValue22() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val23" value="<%= bean.getAttdValue23() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val24" value="<%= bean.getAttdValue24() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val25" value="<%= bean.getAttdValue25() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val26" value="<%= bean.getAttdValue26() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val27" value="<%= bean.getAttdValue27() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val28" value="<%= bean.getAttdValue28() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val29" value="<%= bean.getAttdValue29() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val30" value="<%= bean.getAttdValue30() %>" size="1" maxlength="1" readonly="readonly"/></td>
						<td><input type="text" name="val31" value="<%= bean.getAttdValue31() %>" size="1" maxlength="1" readonly="readonly"/></td>										
					</tr>
				<%		
					}
				%>
			</table>
			<div class="btnPage">
			<button class="left">←</button><button id="ins">입력</button><button class="right">→</button>
			</div>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>