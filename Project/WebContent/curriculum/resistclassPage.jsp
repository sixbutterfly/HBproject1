<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>수강 신청 페이지</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/menu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.bxslider.min.js"></script>

<style type="text/css">
	hr {
		width: 100%;
		height: 3px;
		background-color: silver;
		border: none;
	}
	#textarea {
		width: 93%;
		margin-left: 3%;
	}
	#menu {
		width: 100px;
		background-color: rgb(230, 230, 230);
		vertical-align: top;
		display: inline-block;
	}
	#answer {
		display: inline-block;
		margin-left: 5px;
	}
	.button {
		margin-bottom: 10px;
		margin-left: 42%;
		margin-top: 0px;
	}
	h3 {
		margin: 10px;
		padding: 0px;
		display: inline-block;
	}
	.direction {
		padding-left: 57%;
		font-size: 8pt;
	}
	#ul li {
		vertical-align: top;
		padding: 12px 0px;
		border-bottom: 1px solid silver;
		border-top: 1px solid silver;
	}
	#p {
		margin-left: 3%;
		margin-top: 5px;
		margin-bottom: 5px;
	}
	textarea {
		resize: none;
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
	<div>
		<div>
			<h3>수강 신청 페이지</h3>
			<span class="direction">
				<a href='<%=request.getContextPath() %>/main.jsp'>
					<span>
						HOME
					</span>
				</a> &gt;
				<a href="<%=request.getContextPath() %>/curriculum/curriculumInfo.jsp">
					<span>
						정규교육신청
					</span>
				</a> &gt;
				<a href="<%=request.getContextPath() %>/curriculum/resistclassPage.jsp">
					<span>
						쓰기
					</span>
				</a>
			</span>
		</div>
		<hr/>
		
		<form action="/resistClass.do">
		<ul id="ul">
			<li><label id="menu">지원과정</label><div id="answer"><span>자바 프로그래밍 </span></div></li>
			<li><label id="menu">이름</label><div id="answer"><input type="text" maxlength="15" name="name"></div></li>
			<li><label id="menu">이메일</label><div id="answer"><input type="text" maxlength="15" name="email1">
				@	<input type="text" size="15" name="email1"> <select name="email1">
											<option value="직접입력">직접입력
											<option value="naver.com">naver.com
											<option value="chol.com">chol.com
											<option value="dreamwiz.com">dreamwiz.com
											<option value="empal.com">empal.com
											<option value="freechal.com">freechal.com
											<option value="gmail.com">gmail.com
											<option value="hanafos.com">hanafos.com
											<option value="hanmail.com">hanmail.com
											<option value="hanmir.com">hanmir.com
											<option value="hitel.net">hitel.net
											<option value="hotmail.com">hotmail.com
											<option value="korea.com">korea.com
											<option value="lycos.com">lycos.com
											<option value="nate.com">nate.com
											<option value="netian.com">netian.com
											<option value="paran.com">paran.com
											<option value="yahoo.com">yahoo.com
											<option value="yahoo.co.kr">yahoo.co.kr
										</select></div></li>
			<li>
				<label id="menu" name="tel">
					연락처
				</label>
				<div id="answer">
					<select>
						<option value="010">010
						<option value="011">011
						<option value="016">016
						<option value="017">017
						<option value="018">018
						<option value="019">019
						<option value="070">070
					 </select>
					 -<input type="tel" maxlength="4" size="11">
					 -<input type="tel" maxlength="4" size="11">
				</div>
			</li>
			<li>
				<label id="menu">
					구분
				</label>
				<div id="answer">
					<input type="radio" id="r1" value="대학생, 일반" name="gubun"><lable for="r1">대학생, 일반</lable>
					<input type="radio" id="r2" value="회사에서 교육비납부" name="gubun"><lable for="r2">회사에서 교육비납부</lable>
					<input type="radio" id="r3" value="개인이 교육비납부(재직자)" name="gubun"><lable for="r3">개인이 교육비납부(재직자)</lable>
				</div>
			</li>
			<li>
				<label id="menu">
					회사명
				</label>
				<div id="answer">
				<input type="text" maxlength="40" size="91">
				</div>
			</li>
			<li>
				<label id="menu">
					관련항목
				</label>
				<div id="answer">
					<input type="checkbox" value="회사직원수가 300명 미만"><label><span>회사직원수가 300명 미만</span></label><br/>
				 	<input type="checkbox" value="우선지원대상기업에 근무하는 재직자"><label><span>우선지원대상기업에 근무하는 재직자</span></label><br/>
					<input type="checkbox" value="파견근로자"><label><span>파견근로자</span></label><br/>
					<input type="checkbox" value="만 40세 이상인자(재직중)"><label><span>만 40세 이상인자(재직중)</span></label><br/>
					<input type="checkbox" value="회사직원수가 300명 이상"><label><span>회사직원수가 300명 이상</span></label><br/>
					<input type="checkbox" value="1년이하 계약직"><label><span>1년이하 계약직</span></label></div></li>
			<li>
				<label id="menu">
					교육시간
				</label>
				<div id="answer">
				<select name="pay">
					<option value="09:30~12:30">09:30~12:30
					<option value="14:00~17:00">14:00~17:00
					<option value="19:30~22:30">19:30~22:30
					<option value="주말반(토,일)">주말반(토,일)
				</select>
				</div>
			</li>
			<li>
				<label id="menu">
					결제방법
				</label>
				<div id="answer">
				<select name="pay">
					<option value="신용카드">신용카드
					<option value="능력카드">능력카드
					<option value="현금">현금
				</select>
				</div>
			</li>
			<li><label id="menu">내용</label><div id="answer"><textarea rows="10" cols="80" name="naeyong"></textarea></div></li>
			<li><label id="menu">비밀번호</label><div id="answer"><input type="password" name="password"></div></li>
			<li><label id="menu">파일첨부#1</label><div id="answer"><input type="file" name="file1"></div></li>
			<li><label id="menu">파일첨부#2</label><div id="answer"><input type="file" name="file2"></div></li>
		</ul>
		<br/><p id="p"><strong>개인정보보호를 위한 이용자 동의사항(자세한 내용은 개인정보 취급방침을 확인하시기 바랍니다.)</strong></p>
		<textarea rows="10" cols="80" readonly="readonly" id="textarea">
	
개인정보의 수집범위 

한빛교육센터은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 한빛교육센터의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.

1) 회원 가입시 수집하는 개인정보의 범위

- 필수항목 : 희망 ID, 비밀번호, 비밀번호 힌트용 질문과 답변, 성명, 주민등록번호, 주소, 전화번호, 이메일주소, 이메일 수신 여부

- 선택항목 : 회사주소, 회사전화번호, 생년월일, 결혼여부, 결혼기념일, 직업, 월평균소득, 최종학력, 자녀수, 차량정보

개인정보의 수집목적 및 이용목적 

① 한빛교육센터은 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공하기 위하여 다음과 같은 목적으로 개인정보를 수집하고 있습니다.

- 성명, 아이디, 비밀번호, 주민등록번호 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용

- 이메일주소, 이메일 수신여부, 전화번호 : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보의 안내

- 주소, 전화번호 : 경품과 쇼핑 물품 배송에 대한 정확한 배송지의 확보

- 비밀번호 힌트용 질문과 답변 : 비밀번호를 잊은 경우의 신속한 처리를 위한 내용

- 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료

② 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.

개인정보의 보유기간 및 이용기간 

① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.

- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.

- 계약 또는 청약철회 등에 관한 기록 : 5년

- 대금결제 및 재화등의 공급에 관한 기록 : 5년

- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년

② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 한빛교육센터은 지체없이 그 열람,확인 할 수 있도록 조치합니다.
	
		</textarea>
		<p><input type="checkbox">위 개인정보 취급방침에 동의합니다.</p>
		<div class="button">
			<button type="submit">확인</button>
			<button type="reset">취소</button>
		</div>
		</form>
	</div>
			
		<!-- content end -->
		
		<!-- aside2 -->
		<%@include file="/templet/aside2.jsp" %>
		<!-- footer -->
		<%@include file="/templet/footer.jsp" %>
	</div>
</body>
</html>