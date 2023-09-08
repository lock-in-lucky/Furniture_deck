<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>用户登录</title>
<link href="style/css/login.css"  rel="stylesheet"/>
</head>
<body>
		<div id="loginDiv" style="height: 350px">
		    <form action="LoginServlet" id="form">
		        <h1 id="loginMsg">登录</h1>
		        <p>账号:<input id="username" name="username" type="text" placeholder="请输入账号"></p>
		
		        <p>密码:<input id="password" name="password" type="password" placeholder="请输入密码"></p>
		        
		        <div id="subDiv">
		            <input type="submit" class="button" value="登录">&nbsp;&nbsp;&nbsp;
		            <a href="register.jsp">没有账号？</a>
		        </div>
		    </form>
		</div>
	</body>
</html>