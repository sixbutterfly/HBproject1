<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="aside1 grid2">
	<form action="#">
		<div>
			<input type="text" name="id" value="아이디" /> <input type="password"
				name="id" value="비밀번호" />
		</div>
		<div>
			<button>로그인</button>
		</div>
	</form>
	<div class="clear"></div>
	<div class="grid10 submenu" style="border: solid 1px;">
		<div class="eachmenu">
			<div class="guest">
				<a href="applist.do">개요</a>
			</div>
			<div class="student">
				<a href="viewatt.do">인사말</a>
			</div>
			<div class="student">
				<a href="viewgrade.do">연혁</a>	
			</div>
			<div class="teacher">
				<a href="addatt.do">교수진 소개</a>
			</div>
			<div class="teacher">
				<a href="addgrade.do">입학 안내</a>
			</div>
			<div class="sales">
				<a href="waitinlist.do">찾아오는 길</a>
			</div>
		</div>

	</div>
</div>
<div class="content templet grid8">