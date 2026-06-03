package ah.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AboutOnblurServlet
 */
@WebServlet("/AboutOnblurServlet")
public class AboutOnblurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AboutOnblurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	    request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	   String zh=request.getParameter("zh");
	   PrintWriter  out=response.getWriter();
	   System.out.println("请求信息收到啦"+zh);
	   if(zh.equals("123"))
	   {
	   out.println("该账号已经被注册");
	   }
	   else
	   { 
		   out.println("该账号可以注册!");
	    
	   
	   }
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
