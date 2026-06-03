<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.StudentDao" %>
<%@ page import="beans.Student" %>
<html>
	<body>  
      <%
        request.setCharacterEncoding("UTF-8");
        String stuno= request.getParameter("stuno");
        String stuname=request.getParameter("stuname");
        //out.println(stuno);
        StudentDao sdao= new StudentDao();
        Student student=sdao.getStudentByStuno(stuno);
        if(student!=null&&student.getStuname().equals(stuname)){
        //out.println(stuno);
        out.println(stuname);
        }else{
        
        %>
                   登录失败,<a href="ans03.jsp">返回登录页面</a>
        
    <% 
    }
       %>
  </body>
</html>
