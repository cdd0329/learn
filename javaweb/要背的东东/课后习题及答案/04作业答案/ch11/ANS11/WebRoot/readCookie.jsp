<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//¶ÁÈ¡Cookie
			
			Cookie[] cookies = request.getCookies();
			for(int i = 0; i < cookies.length; i++){
				String cName = cookies[i].getName();
				String cValue = cookies[i].getValue();
		%>
			CookieÃû³Æ:<%=cName %>,
			CookieÖµ:<%=cValue %><BR>
		<%
			}
		%>
	</body>
</html>
