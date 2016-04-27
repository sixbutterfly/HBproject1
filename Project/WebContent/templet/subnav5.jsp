<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.eachmenu>.grid2 {
	<!--display: none;-->
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var level = <%=(Integer) request.getAttribute("level")%>
	switch (level) {
		case 0:
			$(".guest").css("display", "initial");
			break;
		case 1:
			$(".student").css("display", "initial");
			break;
		case 2:
			$(".teacher").css("display", "initial");
			break;
		case 3:
			$(".sales").css("display", "initial");
			break;
		case 4:
			$(".manager").css("display", "initial");
			break;
		}
	});
</script>
<div class="aside1 grid2">
	<div class="login">
		<form action="#">
			<div>
				<input type="text" name="id" value="아이디" />
				<input type="password" name="id" value="비밀번호" />
			</div>
			<div>
				<button>로그인</button>
			</div>
		</form>
	</div>
	<a href="#">회원가입</a>
	<div class="clear"></div>

	<div class="submenu">
		<div class="common">
			<a href="editinfo.do">개인 정보 수정</a>
		</div>
		<div class="eachmenu">
			<div class="guest">
				<a href="applist.do">신청한 강의</a>
			</div>
			<div class="student">
				<a href="viewatt.do">출결 보기</a>
			</div>
			<div class="student">
				<a href="viewgrade.do">성적 보기</a>	
			</div>
			<div class="teacher">
				<a href="addatt.do">출결 입력</a>
			</div>
			<div class="teacher">
				<a href="addgrade.do">성적 입력</a>
			</div>
			<div class="sales">
				<a href="waitinlist.korean">수강 대기자</a>
			</div>
			<div class="manager">
				<a href="allmember.do">회원관리</a>
			</div>
			<div class="manager">
				<a href="finallist.do">수강 최종 승인</a>
			</div>
			<div class="manager">
				<a href="room.do">강의실 관리</a>
			</div>
			<div class="manager">
				<a href="teacher.do">강사 관리</a>
			</div>
			<div class="manager">
				<a href="curriculum.korean">커리큘럼 관리</a>
			</div>
		</div>

	</div>
</div>
<div class="content templet grid8">