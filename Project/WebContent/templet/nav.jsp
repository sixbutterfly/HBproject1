<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div class="nav">
		<div class="nav_main grid12">
			<ul>
				<li><a href="<%=request.getContextPath() %>/center/init.jsp">센터소개</a></li>
				<li><a href="#">커리큘럼</a></li>
				<li><a href="#">취업정보</a></li>
				<li><a href="#">고객센터</a></li>
				<li><a href="mypage.do">마이페이지</a></li>
			</ul>
		</div>
		<div class="clear"></div>
		
		<div class="nav_sub grid12">
			<ul id="sub1">
				<li><a href="<%=request.getContextPath() %>/center/init.jsp">개요</a></li>
				<li><a href="<%=request.getContextPath() %>/center/hello.jsp">인사말</a></li>
				<li><a href="<%=request.getContextPath() %>/center/year.jsp">연혁</a></li>
				<li><a href="<%=request.getContextPath() %>/center/lecture.jsp">교수진 소개</a></li>
				<li><a href="<%=request.getContextPath() %>/center/admission.jsp">입학안내</a></li>
				<li><a href="<%=request.getContextPath() %>/center/map.jsp">찾아오는 길</a></li>
			</ul>
			<ul id="sub2">
				<li><a href="#">자바</a></li>
				<li><a href="#">웹</a></li>
				<li><a href="#">프레임워크</a></li>
			</ul>
			<ul id="sub3">
				<li><a href="#">채용 정보</a></li>
				<li><a href="#">취업 현황</a></li>
				<li><a href="#">취업 후기</a></li>
			</ul>
			<ul id="sub4">
				<li><a href="#">공지사항</a></li>
				<li><a href="#">문의 게시판</a></li>
				<li><a href="#">수강 후기</a></li>
			</ul>
			<ul id="sub5"></ul>
		</div>
		
		<div class="clear"></div>
		</div>