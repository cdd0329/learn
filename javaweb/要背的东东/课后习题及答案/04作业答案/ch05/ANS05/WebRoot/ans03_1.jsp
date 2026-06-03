<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
  <%
      String num=request.getParameter("number");
      int value=Integer.parseInt(num);
      for(int i=0;i<value;i++){
          out.print("»¶Ó­  ");
       }
   %>
  </body>
</html>