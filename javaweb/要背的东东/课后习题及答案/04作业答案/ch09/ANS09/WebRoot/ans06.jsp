<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
	<form action="/ANS09/ans06_2.jsp" method="post">
		登录页面<br> 用户名：<input type="text" name="account"><br>
		密码：<input type="text" name="password"><br> 
		是否保存登录状态： <input type="radio" name="saveLoginState" value="1" checked="checked">是
		<input type="radio" name="saveLoginState" value="0">否<br>
		<input type="submit" value="登录">
	</form>
</body>
</html>
