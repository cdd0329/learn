<%@ page language="java" import="java.sql.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
    		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=UTF-8","root","0608");
			Statement stat = conn.createStatement();
			String sql = 
"SELECT * FROM STUDENT";
			ResultSet rs = stat.executeQuery(sql);
			while(rs.next()){
				String stuno = rs.getString("STUNO");
				String stuname = rs.getString("STUNAME");
				String stusex = rs.getString("STUSEX");
				out.println(stuno + "  " + stuname + " " +stusex+"<BR>");
			}
			stat.close();
			conn.close();

    %>
	</body>
</html>
