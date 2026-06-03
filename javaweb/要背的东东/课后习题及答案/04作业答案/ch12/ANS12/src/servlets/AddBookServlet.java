package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Book;

import dao.BookDao;

public class AddBookServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gb2312");
		request.setCharacterEncoding("gb2312");
		
		String request_id = request.getParameter("id");
		String bookname = request.getParameter("bookname");
		String request_bookprice = request.getParameter("bookprice");
		//进行简单的验证
		int id = request_id==null || request_id.equals("") ? 1 :Integer.valueOf(request_id);
		double bookprice = request_bookprice==null||request_bookprice.equals("") ? 0: Double.valueOf(request_bookprice);
		
		String targetUrl = "/addFail.jsp";
		BookDao bookDao = new BookDao();
		int isSuccess = 0;
		try {
			isSuccess = bookDao.addBook(id, bookname, bookprice);
			if(isSuccess == 1){
				targetUrl = "/showBook.jsp";
				ArrayList<Book> bookList =  bookDao.queryBooksByName("");
				request.setAttribute("bookList", bookList);
				request.setAttribute("msg", "图书添加成功！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		ServletContext application = this.getServletContext();
		RequestDispatcher rd = application.getRequestDispatcher(targetUrl);
		rd.forward(request, response);
	}
}
