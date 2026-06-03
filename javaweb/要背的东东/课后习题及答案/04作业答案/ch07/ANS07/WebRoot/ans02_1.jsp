<%@ page language="java" import="java.sql.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<body>
     <%
        String money1=request.getParameter("money");
      %>
     
     <form action="ans02_2.jsp" method="post">
                输入汇率：<input name="huilv" type="text"><br>
        <input name="newmoney" type="hidden" value="<%=money1%>">
                <input type="submit" value="提交">
  </form> 
  </body>
</html>