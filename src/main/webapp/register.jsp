<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
<link href="style/css/register.css" rel="stylesheet" />

</head>
<body>
	<script>
		
		function aa(){
			var test = document.getElementById("name").value;
			var password = document.getElementById("psw").value;
			var password2 = document.getElementById("psw1").value;
			if(test == "" || password == "" || password2==""){
				document.getElementById('result').innerText = "账号或密码不能为空";
				return false;
			}
			if(password != password2){
				document.getElementById('result').innerText = "两次输入的密码不相同";
				return false;
				//document.getElementById('result').innerText = "登录成功";
			}
		}
	</script>
	<div id="regdiv">
		<div class="hint">
			<h1>欢迎注册</h1>
			<span>已有帐号？</span> <a href="login.jsp">登录</a>
		</div>
		
		<form id="regform" action="RegisterServlet" method="get"
			onsubmit="return aa()">
			<p>
				账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:<input id="name"
					name="reg_name" type="text" placeholder="请输入账号">
			</p>
			<br />

			<p>
				密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:<input id="psw"
					name="reg_psw" type="password" placeholder="请输入密码">
			</p>
			<br />

			<p>
				确定密码:<input id="psw1" name="reg_psw1" type="password"
					placeholder="请输入确认密码">
			</p>
			<span id="result" style="color:red;"></span>
			<br /> <input value="注 册" type="submit" id="button2"> <input
				value="取 消" type="reset" id="button2">
		</form>

	</div>
</body>
</html>