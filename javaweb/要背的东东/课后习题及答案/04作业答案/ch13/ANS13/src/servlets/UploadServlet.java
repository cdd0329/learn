package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
public class UploadServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)  throws ServletException, IOException {
		SmartUpload smartUpload = new SmartUpload();
		//初始化	
		ServletConfig config = this.getServletConfig();
		smartUpload.initialize(config, request, response); 	
		try {
			//上传文件
			smartUpload.upload(); 
			//得到上传的文件对象
			File smartFile = smartUpload.getFiles().getFile(0);
			//保存文件
			String filePath = getServletContext().getRealPath("/FILES")+"\\"+request.getSession().getAttribute("account")+"\\" ;
			java.io.File fileDir = new java.io.File(filePath);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			smartFile.saveAs( filePath + smartFile.getFileName(), smartUpload.SAVE_PHYSICAL);// 保存文件
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		String msg = "Upload Success!";
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("/uploadForm.jsp");
		rd.forward(request, response);
	}
}
