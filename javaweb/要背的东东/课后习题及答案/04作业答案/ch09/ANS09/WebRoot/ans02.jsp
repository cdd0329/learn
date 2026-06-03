<%@page import="beans.Book"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<body>
	<table border="1">
		<tr bgcolor="pink">
			<td>书本名称</td>
			<td>书本价格</td>
			<td>数量</td>
			<td>删除</td>
		</tr>
		<%
			HashMap books = (HashMap) session.getAttribute("books");
			Set set = books.keySet();
			Iterator ite = set.iterator();
			while (ite.hasNext()) {
				String id = (String) ite.next();
				Book book = (Book) books.get(id);
		%>
		<tr bgcolor="yellow">
			<td><%=book.getBookname()%></td>
			<td><%=book.getBookprice()%></td>
			<td><a href="/ANS09/servlet/RemoveServlet?id=<%=book.getId()%>">删除</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="ans01.jsp">继续买书</a>
</body>
</html>
