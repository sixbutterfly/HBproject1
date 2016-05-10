<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 전용 페이지</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="/Project/js/login_page.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>

<style type="text/css">
	*{
		margin-top:0px;		
		padding:0px;		
	}
	
	hr{
		border: 3px solid #06c;
	}
	
	.logo_login>img{
		width : 80%;
		margin-left:30px;
	}
	
	.reg>a{
		text-decoration:none;
		color: black;
		font-weight:bold;
		font-size: 20px;
	}

	.login>input{
		width: 100%;
		height: 50px;
		margin: 15px;
		font-size: 18px;
		font-weight:bold;
	}
	
	.login>button{
		width: 90%;
		height: 60px;
		background-color: #06c;
		color: white;
		font-size: 20px;
	}
	
	.login>div{
		color: red;
		font-weight:bold;
	}
	
	.login>.loginfail{
		font-size:15px;
	}
		
</style>
</head>

<body>	
	<div class="container_12">
		<div class="grid3">&nbsp;</div>
		<div class="grid6 logo_login">			
				<a href="../index.korean"><img alt="LOGO" src="<%=request.getContextPath() %>/imgs/logo_main.png"/></a>
				<hr/>
				<br/><br/>
			    <%-- <form action="<%=request.getContextPath() %>/login/islogin.korean" method="post"> --%>
					<div class="container_12">					
						<div class="grid3">&nbsp;</div>
						<div class="grid6 login"><input type="text" name="id" value="아이디"  tabIndex="1"><div><p>&nbsp;&nbsp; 아이디를 입력해주세요</p></div></div>					
						<div class="grid3">&nbsp;</div>
					</div>				
					<div class="container_12 ">					
						<div class="grid3">&nbsp;</div>
						<div class="grid6 login"><input type="text" name="pw" value="패스워드" tabIndex="2"/><div>	<p>&nbsp;&nbsp; 패스워드를 입력해주세요</p></div>
						<div class="loginfail"><p>&nbsp;&nbsp; 아이디 또는 비밀번호를 다시 확인하세요.</p></div></div>
						<div class="grid3">&nbsp;</div>
					</div>
					<br/><br/>
					<div class="container_12">					
						<div class="grid4">&nbsp;</div>
						<div class="grid5 login"><button type="submit" tabIndex="3">login</button></div>					
						<div class="grid3">&nbsp;</div>
					</div>
			<!-- 	</form>		 --> 
				
				<br/><br/><br/><br/>
				<hr/>
				<br/>
				<div class="container_12">					
					<div class="grid3">&nbsp;</div>
					<div class="grid6 reg"> <a href="../agreejoin.korean">회원가입</a>	</div>
					<div class="grid3">&nbsp;</div>
				</div>				
		</div>
		<div class="grid3 right_m">&nbsp;</div>
	</div>
</body>
</html>