<%@ page language="java" import="java.sql.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<body>
    <%
        String money2=request.getParameter("newmoney");
        String huilv=request.getParameter("huilv");
        Double newmoney2=Double.parseDouble(money2)/Double.parseDouble(huilv);
        out.println("转换后的价格为："+newmoney2);
     %>
          
  </body>
</html>