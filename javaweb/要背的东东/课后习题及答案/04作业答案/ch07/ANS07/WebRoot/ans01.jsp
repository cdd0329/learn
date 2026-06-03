<%@ page language="java" import="java.sql.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<body>
    <%
       String remoteAddr =request.getRemoteAddr();
       if(remoteAddr.startsWith("192.")){
       out.println("·ÃÎÊ½ûÖ¹£¡");
       }
       %>
          
  </body>
</html>