<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>커리큘럼 보기(자바 프로그래밍)</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.bxslider.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
		  'auto':true,
		  'controls':false,
		  'slideWidth':1500,
		  });
	}); //ready end
</script>
<style>
	.table1 {
		float: right;
		width: 480px;
		border-style: hidden;
		margin-right: 30px;
		margin-top: 10px;
		font-size: 14pt;
	}
	.table2 {
		width: 800px;
		font-size: 10pt;
		border-collapse:collapse;
	}
	.table2 tr th {
		height: 40px;
		border: 3px 0px black;
		border-collapse:collapse;
		background-color: orange;
	}
	.table2 ul {
		list-style: inside;
		margin-left: 8px;
		border-bottom: 1px solid black;
	}
	.table2 li {
		height: 20px;
	}
	.table3 {
		margin: 0px;
		padding: 0px;
		width: 950px;
		border: 1px solid;
		border-collapse:collapse;
	}
	.table3 tr th {
		margin: 0px;
		padding: 0px;
		border: 1px solid;
		background-color: orange;
		height: 40px;
	}
	.table3 tr td {
		margin: 0px;
		padding: 0px;
		border: 1px solid;
		text-align: center;
	}
	.resist {
		display: inline-block;
		margin-left: 38%;
		size: 20px;
		b
	}
	#line {
		border-bottom: 1px solid black;
	}
</style>
</head>
<body>
	<div class="container_12">
		<!-- header -->
		<%@include file="/templet/header.jsp" %>
		<!-- nav -->
		<%@include file="/templet/nav.jsp" %>
		<!-- aside1 -->
		<%@include file="/templet/aside1.jsp" %>
		
		<!-- content start -->
		<br/>
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java1.jpg">
		<table class="table1">
		<tr><td><strong>교육과목</strong></td><td> : </td><td>자바 프로그래밍</td></tr>
		<tr><td><strong>교육기간</strong></td><td> : </td><td>[주중반] 2016.05.02 ~ 2016.05.30</td></tr>
		<tr><td></td><td> : </td><td>[주말반] 2016.05.1 ~ 2016.05.29</td></tr>
		<tr><td><strong>교육일정</strong></td><td> : </td><td>[주중반] 총 160시간 월~금 09:00~18:00</td></tr>
		<tr><td></td><td> : </td><td>[주말반] 2016.05.1 ~ 2016.06.29</td></tr>
		<tr><td><strong>교육장소</strong></td><td> : </td><td>한빛 건대교육센터</td></tr>
		<tr><td><strong>교육대상</strong></td><td> : </td><td>재직자 환급, 일반인, 대학생</td></tr>
		<tr><td><strong>교육비용</strong></td><td> : </td><td>전화/온라인 문의</td></tr>
		<tr><td><strong>문의전화</strong></td><td> : </td><td>02-707-1480</td></tr>
		</table>
		<br/>
		﻿<h5>Programming Course</h5>
		<h1>자바(JAVA)개발자 입문과정</h1>
		<br/>
		<h3>교육개요</h3>
		객체 지향적인 JAVA 프로그래밍 언어를 학습하여 Java기반의 프로그래밍과 Java 기반의 웹 어플리케이션 프레임 워크 환경으로 개발 할 수 있는 가장 핵심적이고 효과적인 방법을 교육하는 과정으로, 차세대 IDE인 오라클사의 NetBeans을 사용해서 객체 지향 개념과 핵심적인 자바 프로그래밍 기능에 대해서 학습하게 되고, 이런 지식과 기술을 기반으로 JSP, Struts2 Spring과 같은 개발을 가능하도록 구성되어 있다.
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java2.jpg">
		<br/>
		<br/>
		<h3>교육 대상</h3>
			<ul>
				<li>웹 개발에 관심 있는 분</li>
				<li>자바개발 입문자</li>
				<li>웹 개발 및 프로그램개발에 종사하는 직장인</li>
				<li>고용보험 납입 중이신 재직자 및 일반인</li>
			</ul>
		<br/>
		<h3>교육 목표</h3>
		객체지향 언어의 개념 및 활용에 대하여 학습한다. 
		자바의 기본 문법부터 Class의 개념과 프로그래밍 작성까지 체계적으로 학습. 
		<br/>
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java3.jpg">
		<br/>
		<br/>
		<h3>교육커리큘럼</h3>
		<br/>
		<table class="table2">
			<tr>
			<th><strong>주제</strong></th><th><strong>내용</strong></th>
			</tr>
			<tr>
				<td id="line"><strong>자바 개요 및 자바 기초문법</strong></td>
				<td>
					<ul>
						<li>자바의 소개와 현업에서 많이 사용되는 자바 기반의 프로그래밍과 프레임워크를 소개</li>
						<li>JDK설치 및 컴파일과정과 JVM메모리 구조에 대한 이해</li>
						<li>넷빈즈 IDE에 대한 소개와 설치, 환경설정,자바 식별자와 자료형, 연산자, 캐스팅</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>클래스와 객체의 개념</strong></td>
				<td>
					<ul>
						<li>제어문과 반복문의 문법과 실무적인응용</li>
						<li>클래스의 개념과 설계, 객체 개념 이해와 설계</li>
						<li>오버로딩, Call By Value, Call By Reference</li>
						<li>생성자와 this, this(), 클래스 상속과 오버라이딩</li>
						<li>객체형 변화, 다형성</li>
						<li>추상 클래스와 인터페이스</li>
						<li>추상 클래스를 활용한 Adapter 클래스 구현</li>
						<li>내부 클래스의 개념과 사용방법</li>
						<li>예외와 패키지</li>
						<li>자바의 유용한 클래스</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>자바 제네릭과 컬렉션 & Swing</strong></td>
				<td>
					<ul>
						<li>제네릭의 개념과 제네릭을 사용하기 전의 자료구조 사용법</li>
						<li>제네릭과 Collection, Collection으로 로또 프로그램 만들기</li>
						<li>GUI의 개념</li>
						<li>Swing, Event처리</li>
						<li>데리케이트 뷰</li>
						<li>Swing 그래픽 처리</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>Thread 개념</strong></td>
				<td>
					<ul>
						<li>Thread 개념</li>
						<li>GUI 와 Thread의 구현</li>
						<li>Thread 동기화의 개념과 사용 예</li>
						<li>Single Thread와 Multi Thread의 차이</li>
						<li>Runnable 인터페이스의 사용방법</li>
						<li>Therad로 응용된 그림 그리기 프로그램 개발 예제</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>File 클래스와 IO 프로그래밍</strong></td>
				<td>
					<ul>
						<li>File 클래스와 사용법</li>
						<li>스트림의 개념</li>
						<li>GUI 기반의 스트림 처리 프로그램 개발 예제</li>
						<li>Reader/Writer, OvjectStream 객체 직렬화</li>
						<li>GUI 기반의 스트링 처리 프로그램 개발 예제</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>서버/클라이언트 네트워크 소켓 프로그래밍</strong></td>
				<td>
					<ul>
						<li>File 클래스와 사용법</li>
						<li>스트림의 개념</li>
						<li>GUI 기반의 스트림 처리 프로그램 개발 예제</li>
						<li>Reader/Writer, OvjectStream 객체 직렬화</li>
						<li>GUI 기반의 스트링 처리 프로그램 개발 예제</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>JDBC</strong></td>
				<td>
					<ul>
						<li>JDBC의 개념과 Connection 사용하기</li>
						<li>Statement</li>
						<li>ResultSet 사용하기</li>
						<li>PreparedStatement와 Statement의 속도 테스트</li>
						<li>DataBase소개와 Procedure의 개념</li>
						<li>프로시저 만들기</li>
						<li>CallableStatment 사용하기</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td id="line"><strong>XML</strong></td>
				<td>
					<ul>
						<li>XML의 개념 및 Xml 개발 환경구축</li>
						<li>XML spec의 이해</li>
						<li>안드로이드 환경설정을 위한 XML</li>
					</ul>
				</td>
			</tr>
		</table>
		<br/>
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java4.jpg">
		<br/>
		<br/>
		<table class="table3">
			<tr id="th">
				<th rowspan="2">과정명</th><th rowspan="2">교육일정</th><th rowspan="2">교육시간</th><th rowspan="2">교육비용</th><th colspan="2">고용보험환급</th>
			</tr>
			<tr>
				<th>사업주환급</th><th>개인환급</th>
			</tr>
			<tr>
				<td rowspan="2">자바입문과정</td><td>월~목(48H/4주)</td><td>19:15~22:15(3H)</td><td rowspan="2">전화문의 02-707-1480</td><td rowspan="2">60~80%교육비 환급</td><td rowspan="2">교육의 20%만 본인 부담</td>
			</tr>
			<tr>
				<td>토(40H/5주)</td><td>09:30~18:10(8H)</td>
			</tr>
		</table>
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java5.jpg">
		<br/>
		<img src="<%=request.getContextPath() %>/imgs/java6.jpg">
		<br/>
		<br/>
		<div class="resist">
			<a href="<%=request.getContextPath() %>/curriculum/registerclassPage.jsp">
				<img src="<%=request.getContextPath() %>/imgs/btn.jpg">
			</a>
		</div>
		<br/>
		<br/>
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>