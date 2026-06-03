<%@ page language="java" import="java.sql.*,javax.servlet.http.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<body>
    »¶Ó­½øÈë¡£¡£¡£¡£¡£
   <%
     String str=null;
     Cookie[] cookies=request.getCookies();
     for(int i=0;i<cookies.length;i++){
         if(cookies[i].getName().equals("bgcolor1")){
             str=cookies[i].getValue();
             break;  
         }
     }

    %>
<script>
  var str1="<%=str%>";
  document.body.style.backgroundColor=str1;
</script>
  </body>

</html>