package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//简单验证用户的账号、密码是否正确（账号密码相等）
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String targetUrl = "/loginForm.jsp";
		if(account != null && !("".equals(account)) && password != null && !("".equals(password))){
			if(account.equals(password)){
				request.getSession().setAttribute("account", account);
				targetUrl = "/uploadForm.jsp";
			}
		}
		ServletContext application = this.getServletContext();
		RequestDispatcher rd = application.getRequestDispatcher(targetUrl);
		rd.forward(request, response);	
	}
}
