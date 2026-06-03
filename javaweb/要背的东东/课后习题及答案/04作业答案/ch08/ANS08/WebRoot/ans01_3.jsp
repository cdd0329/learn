<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
   购物车内容是：<hr>
     <%
        ArrayList books=(ArrayList)session.getAttribute("books");
       for(int i=0;i<books.size();i++){
         String book =(String)books.get(i);
         out.print(book);
     %>
       <a href="ans01_4.jsp?tt=<%=book %>">删除</a><br>
    <%
     }
     %><hr>
     <form action="ans01_5.jsp">
       <input type="submit" value="清空购物车">
     </form>
    <form action="ans01.jsp">
    <input type="submit"  value="计算机图书区">
    </form>
   <form action="ans01_1.jsp">
    <input type="submit"  value="历史图书区">
    </form>
</body>
</html>
