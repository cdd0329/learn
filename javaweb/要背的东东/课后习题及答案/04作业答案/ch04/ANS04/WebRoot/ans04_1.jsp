<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<html>
  
  <body>
    <%
      String str=request.getParameter("num");
      int number =Integer.parseInt(str);
     %>
    该数字的平方为：<%=number*number%><hr>
  </body>
</html>
