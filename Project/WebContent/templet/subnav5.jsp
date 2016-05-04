<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.eachmenu>.menu{
	display: none;
}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		 var level = <%= (Integer)session.getAttribute("level")%>;
		 
	switch (level) {
		case 0:
			$(".guest").css("display", "initial");
			break;
		case 1:
			$(".manager").css("display", "initial");
			break;
		case 2:
			$(".sales").css("display", "initial");
			break;
		case 3:
			$(".teacher").css("display", "initial");
			break;
		case 4:
			$(".student").css("display", "initial");
			break;
		}
	});
</script>


	<div class="submenu">
		<div class="common">
			<a href="editinfo.do">개인 정보 수정</a>
		</div>
		<div class = "eachmenu">
			<div class="guest menu">
				<a href="applist.korean">신청한 강의</a>
			</div>
			<div class="student menu" >
				<a href="viewatt.korean">출결 보기</a>
			</div>
			<div class="student menu">
				<a href="viewgrade.korean">성적 보기</a>	
			</div>
			<div class="teacher menu">
				<a href="addatt.korean">출결 입력</a>
			</div>
			<div class="teacher menu">
				<a href="addgrade.korean">성적 입력</a>
			</div>
			<div class="sales menu">
				<a href="waitinlist.korean">수강 대기자</a>
			</div>
			<div class="manager menu">
				<a href="manageall.korean">회원관리</a>
			</div>
			<div class="manager menu">
				<a href="finallist.korean">수강 최종 승인</a>
			</div>
			<div class="manager menu">
				<a href="room.korean">강의실 관리</a>
			</div>
			<div class="manager menu">
				<a href="curriculum.korean">커리큘럼 관리</a>
			</div>
		</div>

	</div>
</div>
<div class="content templet grid8">
