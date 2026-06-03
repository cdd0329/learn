package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDao;

import beans.Student;

public class ShowStudentServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String stuno = request.getParameter("stuno");
		String stuname = request.getParameter("stuname");
		StudentDao studentDao = new StudentDao();
		try {
			ArrayList<Student> stuList = studentDao.getStudentsFaintly(stuno, stuname);
			request.setAttribute("stuList", stuList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ServletContext application = this.getServletContext();
		RequestDispatcher rd = application.getRequestDispatcher("/ans04_2.jsp");
		rd.forward(request, response);
	}
}
