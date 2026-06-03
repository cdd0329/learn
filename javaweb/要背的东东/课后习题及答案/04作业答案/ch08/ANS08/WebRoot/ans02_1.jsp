<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
          <%
            if(session.getAttribute("account")==null){
                response.sendRedirect("ans02.jsp");
            }
           %>
      欢迎<%=session.getAttribute("account") %>来到系统！<hr>
  <form action="ans02.jsp" >
    <input type="submit" value="退出">
  </form>
</body>
</html>
