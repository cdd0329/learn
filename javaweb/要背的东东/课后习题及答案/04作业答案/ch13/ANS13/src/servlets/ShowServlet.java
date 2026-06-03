package servlets;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String account = (String) request.getSession().getAttribute("account");
		if(null != account && !("".equals(account))){
			String filePath = getServletContext().getRealPath("/FILES")+"\\"+account+"\\";
			File file = new File(filePath);
			File[] files = file.listFiles();
			ArrayList fileList = new ArrayList();
			if(null != files && files.length > 0){
				for(int i=0;i<files.length;i++){
					fileList.add(files[i].getName());
				}
			}
			request.setAttribute("fileList", fileList);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/fileList.jsp");
		rd.forward(request, response);
	}
}
