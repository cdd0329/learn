<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    
     <%
        ArrayList books=(ArrayList)session.getAttribute("books");
        String book =new String(request.getParameter("tt").getBytes("ISO-8859-1"),"gb2312");
       books.remove(book);
       response.sendRedirect("ans01_3.jsp");
       %>
</body>
</html>
