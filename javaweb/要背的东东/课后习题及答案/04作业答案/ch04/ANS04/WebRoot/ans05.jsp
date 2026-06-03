<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <body>
    <%
			String s = null;
			if ((s = request.getParameter("num")) != null) {
				int i = Integer.parseInt(s);
				out.println("这个数的平方是："+(i * i) + "<br />");
			}
		%>

		<%
			for (int i = 1; i < 10; i++) {
		%>
		<a href="ans05.jsp?num=<%=i%>"><%=i%></a>   
		<%
			}
		%>

  </body>
</html>
