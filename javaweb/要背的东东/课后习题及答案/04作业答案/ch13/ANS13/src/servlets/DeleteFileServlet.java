package servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteFileServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fileName = request.getParameter("fileName");
		String account = (String) request.getSession().getAttribute("account");
		String filePath = getServletContext().getRealPath("/FILES")+"\\"+account+"\\"+fileName;
		System.out.println(filePath);
		String targetUrl = "/fileList.jsp";
		File file = new File(filePath);
		String msg = "É¾³ýÊ§°Ü£¡";
		if(file.exists()){
			if(file.isFile()){
				file.delete();
				msg = "É¾³ý³É¹¦£¡";
			}
		}
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher(targetUrl);
		rd.forward(request, response);
	}
}
