<span style="font-size:14px;"><span style="color:#ff0000;">Out.jsp</span>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ page import="net.sf.json.*,java.io.*" %>  
  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    
      
    <title>My JSP 'Output.jsp' starting page</title>  
      
      
  </head>  
    
  <body>  
     <%  
        
  response.setContentType("text/html;charset=utf-8");    
  String account = request.getParameter("username");    
      
  JSONObject json = new JSONObject();    
      
  JSONArray array = new JSONArray();    
  JSONObject member = null;    
  for (int i = 1; i < 2; i++) {    
      member = new JSONObject();    
      member.put("name", "xiaohua"+i);    
      member.put("age",new Integer(i));    
      array.add(member);    
  }    
      
  json.put("account", account);    
  json.put("jsonArray", array);    
      
  PrintWriter pw = response.getWriter();     
  pw.print(json.toString());    
      
  System.out.println("json array :"+array.toString());    
  System.out.println("json object :"+json.toString());    
  System.out.println("\"key\":"+"\"my\"");
  System.out.println("\\");
  pw.close();    
   
  
      
  %>  
  </body>  
