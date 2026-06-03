<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<html>
  
  <body>
    <%
			for (int i = 1; i < 10; i++) {
		%>
		<a href="ans04_1.jsp?num=<%=i%>"><%=i%></a>   
		<%
			}
		%>
  </body>
</html>
