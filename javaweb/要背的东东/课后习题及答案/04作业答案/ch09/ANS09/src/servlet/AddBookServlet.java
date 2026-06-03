package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Book;

public class AddBookServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		HashMap books = (HashMap) session.getAttribute("books");
		
		if(books == null){
			books = new HashMap();
		}
		
		String id = request.getParameter("id");
		String bookname = request.getParameter("bookname");
		double bookprice = Double.valueOf(request.getParameter("bookprice"));
		Book book = new Book();
		book.setId(id);
		book.setBookname(bookname);
		book.setBookprice(bookprice);
		books.put(id, book);	
		session.setAttribute("books", books);
//		ServletContext application = this.getServletContext();
//		RequestDispatcher rd = application.getRequestDispatcher("/servlet/QueryServlet");
//		rd.forward(request, response);
		response.sendRedirect("/ANS09/servlet/QueryServlet");
	}
}
