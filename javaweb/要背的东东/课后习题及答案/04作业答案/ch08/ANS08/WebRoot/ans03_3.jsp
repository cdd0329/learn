<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    
     成功退出！
   <%
    String accounts=(String)session.getAttribute("myaccount");
    List<String> list = (List) application.getAttribute("yh");
    list.remove(accounts);
   //application.setAttribute("yhm", name + "离开聊天室!");
   %>
    <a href="ans03.jsp">重新登录</a>
</body>
</html>
