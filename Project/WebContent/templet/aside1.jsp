<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
	<script type="text/javascript" src="js/login.js" charset="utf-8"></script>
		<div class="aside1 grid2">
			<%
			Boolean re = (Boolean)session.getAttribute("login");
			if(re!=null){	
				if(re){
			%>
					<div><%=(String)session.getAttribute("id") %>님 환영합니다</div>
					<div><a href="login/logout.korean"><span>logout</span></a></div>
			<%}else{
				%>
				<form>
					<div class="login">
						<input type="text" name="id" value="아이디"/>
						<input type="password" name="pw" value="비밀번호"/>
						<button>로그인</button>
					</div>				
				</form>
			<%
				}
			}else{ %>	
				<form>
					<div class="login">
						<input type="text" name="id" value="아이디"/>
						<input type="password" name="pw" value="비밀번호"/>
						<button>로그인</button>						
					</div>					
				</form>	
		<%} %>
			
			<div class="clear"></div>
			<div class="anav"></div>
		</div>
		<div class="content templet grid8">
		
		