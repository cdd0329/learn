<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<body>  
       
        <h3>模糊查询学生信息</h3>
        <form action="servlet/ShowStudentServlet" method="post">
                     请输入学生学号：<input type ="text" name="stuno"><br>
                     请输入学生姓名：<input type ="text" name="stuname"><br>
        <input type ="submit" value="查询">
        </form>
  </body>
</html>
