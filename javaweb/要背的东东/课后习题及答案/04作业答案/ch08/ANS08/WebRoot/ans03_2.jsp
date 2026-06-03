<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    <body>
     <h2 align="center">欢迎进入聊天室：</h2>
    <table width="80%" border="0" align="center";>
    <tr bgcolor="yellow" align="center">
    <td>当前在线</td>
    </tr>
     <tr bgcolor ="pink" align="center">
 	 <td> 
     <%
      List<String> list = (List)application.getAttribute("yh");
      for (int i = 0; i < list.size(); i++) {
      %>
      <%=list.get(i)%>
      <br>
      <%
        }
      response.setHeader("refresh", "5");
      %>
		</td>
    <tr align="center">
    <td> 
    <form action="ans03_3.jsp" >
    <input type="submit" value="退出">
     </form>
   </td>
    </tr>
</body>
</html>
