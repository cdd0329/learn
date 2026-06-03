<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String  msg="1988";

  session.setAttribute("msg", msg);




%>

<a  href="session-tran.jsp">看看数据是否传递</a>

</body>
</html>