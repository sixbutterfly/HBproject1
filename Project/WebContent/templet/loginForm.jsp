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
				<div class="user"><%=(String)session.getAttribute("id") %>님 <br/></div>
				<div><a href="/Project/login/logout.korean"><span class="out">logout</span></a></div>
				<%		}else{
					%>
				
				<div class="login">
					<input type="text" name="id"  value="아이디" />
					<input type="text" name="pw"  value="패스워드"/>			
				</div>
				<div class="login">
					<button>login</button>
				</div>

				<a class="reg" href="agreejoin.korean">회원가입</a>

					<%
						}
					}else{ %>
			
				<div class="login">
					<input type="text" name="id"  value="아이디" />
					<input type="text" name="pw"  value="패스워드"/>						
				</div>
				<div class="login">
					<button>login</button>
				</div>

				<a class="reg" href="agreejoin.korean">회원가입</a>
				<%} %>
				
			</div>
			
			<div class="clear"></div>
