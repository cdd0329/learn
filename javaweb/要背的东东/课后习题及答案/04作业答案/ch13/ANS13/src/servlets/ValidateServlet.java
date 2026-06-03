package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//得到提交的验证码
		String code = request.getParameter("code");
		//获取session中的验证码
		HttpSession session = request.getSession();
		String randStr = (String)session.getAttribute("randStr");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		if(!code.equals(randStr)){
			out.println("验证码错误！");
		}
		else{
			out.println("验证码正确!跳转到LoginServlet......");
		}		
	}
}
