<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">

function check(){
	if($("#username").val()==""){
		alert("用户名不能为空");
		$("#username").focus();
		return false;
	}
	if($("#password").val()==""){
		alert("密码不能为空");
		$("#password").focus();
		return false;
	}
}
</script>

<!-- <script type="text/javascript">
function $(a){
	return document.getElementById(a);
}

function check(){
	var uname=$("username");
	var upwd=$("password");
	if(uname.value==""){
		alert("用户名内容不能为空");
		return false;
	}
	if(upwd.value==""){
		alert("密码不能为空");
		return false;
	}
}
</script> -->
<h1>登录界面</h1>
<form action="servlet",method="post" onsubmit="return check()">
	用户名：<input type="text" name="username" id="username"><br>
	密码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password"><br>
	<br>
	<input	type="submit"  value="登录">
</form>
</body>
</html>
