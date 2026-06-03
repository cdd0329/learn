package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Book;

import dao.BookDao;

public class ShowBookServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gn2312");
		String bookname = request.getParameter("bookname");
		BookDao bookDao = new BookDao();
		ArrayList<Book> bookList = new ArrayList<Book>();
		try {
			bookList = bookDao.queryBooksByName(bookname);
			request.setAttribute("bookList", bookList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ServletContext application = this.getServletContext();
		RequestDispatcher rd = application.getRequestDispatcher("/showBook.jsp");
		rd.forward(request, response);
	}
}
