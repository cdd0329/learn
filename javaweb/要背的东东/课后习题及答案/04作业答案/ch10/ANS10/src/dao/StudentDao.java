package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Student;

public class StudentDao {
	  private Connection conn =null;
	  private void initConnection() throws Exception{
		  Class.forName("com.mysql.jdbc.Driver");
		  String url="jdbc:odbc:DSSchool";
		  conn = DriverManager.getConnection(url, "", "");
	  }
	  public Student getStudentByStuno(String stuno) throws Exception{
		  Student st=null;
		  initConnection();
		  String sql="select stuno,stuname from t_student where stuno=?";
		  PreparedStatement ps=conn.prepareStatement(sql);
		  ps.setString(1,stuno);
		  ResultSet rs=ps.executeQuery();
		  if(rs.next()){
			 st=new Student();
			 st.setStuno(rs.getString("stuno"));
			 st.setStuname(rs.getString("stuname"));
		  }
		  closeConnection();
		  return st;
	  }
	  public ArrayList<Student> getStudentsFaintly(String stuno,String stuname) throws Exception{
		  initConnection();
		  ArrayList<Student> list = new ArrayList<Student>();
		  String sql="select stuno,stuname from t_student where stuno like '%" + stuno + "%' and stuname like '%" + stuname + "%' ";
		  Statement stat = conn.createStatement();
		  ResultSet rs = stat.executeQuery(sql);
		  while(rs.next()){
			 Student st = new Student();
			 st.setStuno(rs.getString("stuno"));
			 st.setStuname(rs.getString("stuname"));
			 list.add(st);
		  }
		  closeConnection();
		  return list;
	  }
	  public void closeConnection() throws Exception{
		  conn.close();
     }
}

