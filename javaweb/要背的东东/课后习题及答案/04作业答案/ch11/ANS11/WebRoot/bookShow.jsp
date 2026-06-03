<%@page import="beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookDao"%>
<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<%
			BookDao bookDao = new BookDao();
			String bookname = request.getParameter("bookname");
			ArrayList<Book> bookList =  bookDao.queryBooksByName(bookname);
			request.setAttribute("bookList", bookList);
		 %>
		<table align="center" style="border: 1px solid black;">
			<caption>图书列表</caption>
			<thead>
				<tr>
					<td>图书名称</td>
					<td>图书价格</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookList }" var="book" >
					<tr>
						<td>
						<c:choose>
							<c:when test="${book.bookprice gt 50}">
								<font color="yellow">${book.bookname }</font>
							</c:when>
							<c:otherwise>${book.bookname }</c:otherwise>
						</c:choose>
						</td>
						<td>${book.bookprice }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>
