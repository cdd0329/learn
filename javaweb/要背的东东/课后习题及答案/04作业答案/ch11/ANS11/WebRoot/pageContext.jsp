<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//page
			pageContext.setAttribute("pageMsg1", "Welcome Page!(pageContext)", pageContext.PAGE_SCOPE);
			
			//request
			pageContext.setAttribute("requestMsg1", "Welcome Request!(pageContext)", pageContext.REQUEST_SCOPE);
			//等价于
			request.setAttribute("requestMsg2", "Welcome Request!(request)");
			
			//session
			pageContext.setAttribute("sessionMsg1", "Welcome Session!(pageContext)", pageContext.SESSION_SCOPE);
			//等价于
			session.setAttribute("sessionMsg2", "Welcome Session!(session)");
			
			//application
			pageContext.setAttribute("applicationMsg1", "Welcome Application!(pageContext)", pageContext.APPLICATION_SCOPE);
			//等价于
			application.setAttribute("applicationMsg2", "Welcome Application!(application)");
		%>
		page内的内容:
			<%=pageContext.getAttribute("pageMsg1", pageContext.PAGE_SCOPE) %><br>
		request内的内容:
			<%=pageContext.getAttribute("requestMsg1", pageContext.REQUEST_SCOPE) %>,
	        <%=pageContext.getAttribute("requestMsg2", pageContext.REQUEST_SCOPE) %><br>
		session内的内容:
			<%=pageContext.getAttribute("sessionMsg1", pageContext.SESSION_SCOPE) %>,
			<%=pageContext.getAttribute("sessionMsg2", pageContext.SESSION_SCOPE) %><br>
		application内的内容:
			<%=pageContext.getAttribute("applicationMsg1", pageContext.APPLICATION_SCOPE) %>,
			<%=pageContext.getAttribute("applicationMsg2", pageContext.APPLICATION_SCOPE) %><br>
	</body>
</html>
