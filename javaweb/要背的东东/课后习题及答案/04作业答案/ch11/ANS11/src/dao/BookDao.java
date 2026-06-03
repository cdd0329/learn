package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Book;

public class BookDao {
	public ArrayList<Book> queryBooksByName(String bookname) throws Exception {
		Connection conn = null;
		ArrayList<Book> books= new ArrayList<Book>();
		try {
			//获取连接
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			String url="jdbc:odbc:DSSchool";
			conn = DriverManager.getConnection(url, "", "");
			// 运行SQL语句
			String sql = "SELECT BOOK_NAME,BOOK_PRICE from T_BOOK WHERE BOOK_NAME LIKE '%" + bookname + "%' ";
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			while (rs.next()) {
                //实例化VO
				Book book = new Book();
				book.setBookname(rs.getString("BOOK_NAME"));
				book.setBookprice(rs.getDouble("BOOK_PRICE"));
				books.add(book);
			}
			rs.close();
			stat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {// 关闭连接
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception ex) {
			}
		}
		return books;
	}
}
