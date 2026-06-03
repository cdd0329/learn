package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Book;

public class RemoveServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");	

		HttpSession session = request.getSession();
		HashMap books = (HashMap)session.getAttribute("books");
		Book book = (Book)books.get(id);
		//“∆≥˝œ‡”¶Õº È
		books.remove(id);		
		response.sendRedirect("/ANS09/servlet/QueryServlet");
	}

}
