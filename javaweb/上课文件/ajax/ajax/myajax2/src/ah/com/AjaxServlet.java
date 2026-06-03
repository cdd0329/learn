package ah.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/AjaxServlet")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	  response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		    PrintWriter out = response.getWriter();
		    String username = request.getParameter("username");
		//   String txt = new String(username.getBytes("ISO-8859-1"),"UTF-8");
		    String txt = new String(username);
		    out.print("txt="+txt+":"+Math.random());
		 
		    System.out.println("客户端向服务器端发送请求啦");
		    out.flush();
		    out.close();
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
