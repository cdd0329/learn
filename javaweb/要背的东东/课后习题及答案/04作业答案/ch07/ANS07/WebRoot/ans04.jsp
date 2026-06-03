<%@ page language="java" import="java.util.*,javax.servlet.http.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<body>
     <form action="ans04.jsp">
     请选择背景颜色：
    <select name="color">
          <option value="white">白色</option>
          <option value="blue">蓝色</option>
   		  <option value="red">红色</option>
  		  <option value="green">绿色</option>
 		  <option value="yellow">黄色</option>
    </select>  
     <input type="submit" value="提交">
   
     </form>
    <%
       String color1=request.getParameter("color");
       if(color1!=null){
       Cookie cookie=new Cookie("bgcolor1",color1);
       cookie.setMaxAge(60000);
       response.addCookie(cookie); 
       response.sendRedirect("ans04_1.jsp");
       }
     %>
  </body>
</html>