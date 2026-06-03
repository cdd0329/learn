<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
}</script>
<h1>注册界面</h1>

<form action="${pageContext.request.contextPath}/RegisterServlet" method="post" onsubmit="return check()">
	用户名：<input type="text" name="username" id="username"><br>
	密码：    &nbsp; &nbsp;<input type="password" name="password" id="password"><br>
	<br><input	type="submit" value="注册">
</form>
</body>
</html>
