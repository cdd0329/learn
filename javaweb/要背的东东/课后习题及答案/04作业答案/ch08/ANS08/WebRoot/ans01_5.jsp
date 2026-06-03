<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    
     <%
        ArrayList books=(ArrayList)session.getAttribute("books");
       books.clear();
       response.sendRedirect("ans01_3.jsp");
       %>
</body>
</html>
