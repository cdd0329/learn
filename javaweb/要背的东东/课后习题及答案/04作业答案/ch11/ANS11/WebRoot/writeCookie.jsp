<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//在Cookie内放进内容
			
			//实例化一个Cookie
			Cookie cookie1 = new Cookie("account","Jack");
			Cookie cookie2 = new Cookie("password","123456");
			//添加Cookie到客户端
			response.addCookie(cookie1);
			response.addCookie(cookie2);
		%>
		Cookie成功写到客户端
	</body>
</html>
