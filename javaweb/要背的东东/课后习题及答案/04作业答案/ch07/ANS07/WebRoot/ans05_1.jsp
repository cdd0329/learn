<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
	<%
	//首先检查
	Cookie[] cookies = request.getCookies();
	String account = "";
	String password = "";
			if (cookies != null && cookies.length != 0) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i] != null) {
					if (cookies[i].getName().equals("account")) {
						account = cookies[i].getValue();
					}
				}
				if (cookies[i] != null) {
					if (cookies[i].getName().equals("password")) {
						password = cookies[i].getValue();
					}
				}
			}	
			}
			if (!account.equals("") && !(password.equals(""))
				&& account.equals(password)) {
					request.getRequestDispatcher("/ans03_1.jsp").forward(request,response);
				} else {
				%>
	欢迎登录
	<form name="loginForm" action="ans05_2.jsp">
		请输入账号：<input name="account" type="text"><br> 请输入密码：<input
			name="password" type="password"><br> 是否保存登录状态：<input
			type="radio" name="saveLoginState" value="1" checked="checked">是
		<input type="radio" name="saveLoginState" value="0">否<br>
		<input type="submit" value="登录">
		<%
				}
%>
	</form>
</body>
</html>
