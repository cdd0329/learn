<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    <%! List<String> list=new ArrayList<String>();%>
  	<%
		String account =request.getParameter("account");
		String password =request.getParameter("password");
		session.setAttribute("myaccount",account);
     for(int i=0;i<list.size();i++){
    if(account.equals(list.get(i))||account==""){%>
    <jsp:forward page="ans03.jsp"></jsp:forward>
<%     
     }
     }
     list.add(account);
     application.setAttribute("yh", list);
     response.sendRedirect("ans03_2.jsp");
%>
</body>
</html>
