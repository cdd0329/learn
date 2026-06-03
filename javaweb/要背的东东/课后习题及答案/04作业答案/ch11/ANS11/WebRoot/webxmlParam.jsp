<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//读取web.xml中的某个参数
			String account = application.getInitParameter("account");
			String password = application.getInitParameter("password"); 
		%>
		
		web.xml内的account值:<%=account %><br>
		web.xml内的password值:<%=password %>
	</body>
</html>
