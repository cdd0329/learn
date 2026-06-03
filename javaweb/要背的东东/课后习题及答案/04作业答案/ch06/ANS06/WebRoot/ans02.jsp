<%@ page language="java" import="java.sql.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
                      查询学生信息<br>
        <form method="post">
                     请输入学生姓名：<input type ="text" name="stuname"><br>
        <input type ="submit" value="查询">
        </form>

        <%request.setCharacterEncoding("gb2312"); %>
		<%  
		    String stuname=request.getParameter("stuname");
		    if(stuname!=null){
	    		Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/base?useUnicode=true&characterEncoding=UTF-8","root","root");
				PreparedStatement stat=null;
				ResultSet rs=null;
				String sql="SELECT * FROM STUDENT where stuname like '%"+stuname+"%'";
			    out.print(sql);
				stat=conn.prepareStatement(sql);
				rs=stat.executeQuery();
				while(rs.next()){
				    String stuno=rs.getString(1);
				    String stuname1=rs.getString(2);
				    String stusex=rs.getString(3);
				    out.println(stuno+" " +stuname1+" "+stusex+"<br>");
				    }
				     stat.close();
				    conn.close();
		 }
			   
		%>
  </body>
</html>
