<%@page import="java.util.ArrayList"%>
<%@page import="beans.Student"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<body>
		<%
			ArrayList stuList= (ArrayList)request.getAttribute("stuList");
		%>
		<table border=2>
			<tr>
				<td>学号</td>
				<td>姓名</td>
			</tr>
			<%
				for (int i = 0; i < stuList.size(); i++) {
					Student student=(Student)stuList.get(i);
			%>
			<tr>
				<td><%=student.getStuno()%></td>
				<td><%=student.getStuname()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
