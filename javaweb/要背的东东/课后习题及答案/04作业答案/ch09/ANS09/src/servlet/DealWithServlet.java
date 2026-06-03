package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DealWithServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				doPost(request,response);
		}
			public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
				String account = request.getParameter("account");
				String password = request.getParameter("password");
				//简单验证登录信息
				if(account != null && password != null && !(account.equals("")) 
						&& !(password.equals("")) && account.equals(password)){
					HttpSession session = request.getSession();
					session.setAttribute("account", account);
					session.setAttribute("password", password);
					request.getRequestDispatcher("/index.jsp").forward(request,response);
				}
				else{
					request.getRequestDispatcher("/ans05.jsp").forward(request,response);
				}
			}
}
