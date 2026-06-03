<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%		
		out.clear();
		out = pageContext.pushBody();
		String fileName = request.getParameter("fileName");
	    //告诉客户端出现下载框，并指定下载框中的文件名
		response.setHeader("Content-Disposition","attachment;filename="+fileName);
		int length = fileName.length();
    	//指定文件类型   
    	String fileType = fileName.substring(length-3, length);
    	if(fileType == "doc"){
    		response.setContentType("application/msword");
    	}
    	else if(fileType == "pdf"){
    		response.setContentType("application/pdf");
    	}
		//指定文件
		RequestDispatcher rd = request.getRequestDispatcher("/FILES/" + session.getAttribute("account") + "/" + fileName);
		rd.forward(request, response);
 %>