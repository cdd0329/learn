<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
     <%
        ArrayList books=(ArrayList)session.getAttribute("books");
        if(books==null){
           books=new ArrayList();
           session.setAttribute("books",books);
        }
        String book =new String(request.getParameter("b1").getBytes("ISO-8859-1"),"gb2312");
        String type=request.getParameter("i");
        if(book!=null){
            books.add(book);
        }
        if(type.equals("0")){
        response.sendRedirect("ans01.jsp");
        }else{
        response.sendRedirect("ans01_1.jsp");
        }
     %>
</body>
</html>
