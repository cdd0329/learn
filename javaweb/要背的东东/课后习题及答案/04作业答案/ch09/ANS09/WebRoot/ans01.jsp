<%@page import="beans.Book"%>
<%@page import="com.sun.xml.internal.ws.util.StringUtils"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <%@page language="java"  import="org.apache.commons.lang3.StringUtils"%> --%>
<html>
<body>

	<form name="loginForm" action="/ANS09/servlet/QueryServlet"
		method="post">
		请您输入需要查询的图书名字：<input type="text" name="name" /> <input type="submit"
			value="查询">
	</form>
	<hr>
	<%
ArrayList books = (ArrayList)request.getAttribute("books");
if(books != null && books.size() > 0){
%>
	<table>
		<tr>
			<h3>所查到的图书信息：</h3>
		</tr>
		<tr>
			<td>图书名称</td>
			<td>图书价格</td>
			<td>操作</td>
		</tr>
		<tr>
			<td>
				<% 
			   for (int i = 0; i < books.size(); i++) {
					Book book=(Book)books.get(i);
			%>
			
		<tr>
			<td><%=book.getBookname()%></td>
			<td><%=book.getBookprice()%></td>
			<td><a
				href="AddBookServlet?id=<%=book.getId()%>&bookname=<%=book.getBookname()%>&bookprice=<%=book.getBookprice()%>">添加到购物车</a>
			</td>
		</tr>
		<%
				}
			%>
	</table>
	<%
}
 %>

	<a href="/ANS09/ans02.jsp">查看购物车</a>
</body>
</html>