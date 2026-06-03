<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
             »¶Ó­µÇÂ¼
 
  <form action="ans02.jsp" method="post" >
    ÇëÊäÈëÕËºÅ£º<input name="account" type="text"><br>
    ÇëÊäÈëÃÜÂë£º<input name="password" type="password"><br> 
 <input type="submit" value="µÇÂ¼">
  </form>
  	<%
		String account =request.getParameter("account");
		String password =request.getParameter("password");
		if(account!=null){
		if(account.equals(password)){
			session.setAttribute("account",account);
			response.sendRedirect("ans02_1.jsp");
		}else{
			out.println("µÇÂ¼Ê§°Ü");
		}
		}
 %>
</body>
</html>
