<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table align="center" style="border: 1px solid black;">
			<caption>学术列表</caption>
			<thead>
				<tr>
					<td>学生姓名</td>
					<td>学生性别</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${stuList }" var="student" >
					<tr>
						<td>${student.stuname }</td>
						<td>${student.stusex }</td>
						<td><a href="delete.action?stuno=${student.stuno }">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>