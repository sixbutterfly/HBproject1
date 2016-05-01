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
		width : 100%;
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
	}
	
	.login>button{
		width: 90%;
		height: 60px;
		background-color: #06c;
		color: white;
		font-size: 20px;
	}
		
</style>
<%
					Boolean re = (Boolean)session.getAttribute("login");
					if(re!=null){	
						if(re){
				%>

</head>
<body>
	<div class="container_12">
		<div class="grid3">&nbsp;</div>
		<div class="grid6 logo_login">			
				<a href="main.jsp"><img alt="LOGO" src="<%=request.getContextPath() %>/imgs/logo_main.png"></a>
				<hr/>
				<br/><br/>
				
				<div class="container_12">					
					<div class="grid3">&nbsp;</div>
					<div class="grid6 login"><input type="text" name="id"  value="아이디" /></div>
					<div class="grid3">&nbsp;</div>
				</div>							
				<div class="container_12">					
					<div class="grid3">&nbsp;</div>
					<div class="grid6 login"><input type="text" name="pw"  value="패스워드" /></div>
					<div class="grid3">&nbsp;</div>
				</div>
				<br/><br/>
				<div class="container_12">					
					<div class="grid4">&nbsp;</div>
					<div class="grid5 login"><button>login</button></div>
					<div class="grid3">&nbsp;</div>
				</div>		
				
				<br/><br/><br/><br/>
				<hr/>
				<br/>
				<div class="container_12">					
					<div class="grid3">&nbsp;</div>
					<div class="grid6 reg"> <a href="#">회원가입</a>	</div>
					<div class="grid3">&nbsp;</div>
				</div>				
		</div>
		<div class="grid3 right_m">&nbsp;</div>
	</div>
</body>
</html>