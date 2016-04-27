<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script type="text/javascript" src="/Project/js/login.js" charset="utf-8"></script>
		<div class="aside1 grid2">
			<div class="login">
				
				<%
					Boolean re = (Boolean)session.getAttribute("login");
					if(re!=null){	
						if(re){
				%>
				<div><%=(String)session.getAttribute("id") %>님 <br/> 환영합니다</div>
				<div><a class="log" href="/Project/login/logout.korean"><span>logout</span></a></div>
				<%		}else{
					%>
				
				<div class="login">
					<input type="text" name="id" />
					<input type="text" name="pw" />			
				</div>
				<div class="login">
					<button>login</button>
				</div>
					<%
						}
					}else{ %>
			
				<div class="login">
					<input type="text" name="id" />
					<input type="text" name="pw"" />			
				</div>
				<div class="login">
					<button>login</button>
				</div>
				<%} %>
				
			</div>
			<a class="reg" href="#">회원가입</a>
			<div class="clear"></div>

