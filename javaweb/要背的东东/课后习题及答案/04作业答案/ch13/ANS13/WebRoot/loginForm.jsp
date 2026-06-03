<%@ page language="java" pageEncoding="gb2312"%>
<html>
	<body>
	欢迎登录本系统<BR>
	<form action="servlet/LoginServlet" method="post">
		请您输入账号:<input type="text" name="account" /><BR>
		请您输入密码: <input type="password" name="password" /><BR>
		<input type="submit" value="登录">	
	</form>		
	</body>
</html>
