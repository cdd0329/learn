<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<%
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	String saveLoginState = request.getParameter("saveLoginState");
	if (account != null && !(account.equals("")) && password != null
			&& !(password.equals("")) && account.equals(password)) {
		//ÈôÓÃ»§Ñ¡Ôñ
		if (saveLoginState != null && saveLoginState.equals("1")) {
			Cookie aCookie = new Cookie("account", account);
			response.addCookie(aCookie);
			Cookie pCookie = new Cookie("password", password);
			response.addCookie(pCookie);
		}
		response.sendRedirect("ans03_1.jsp");
	} else {
		response.sendRedirect("ans05_1.jsp");
	}
%>
<body>
  </body>
</html>