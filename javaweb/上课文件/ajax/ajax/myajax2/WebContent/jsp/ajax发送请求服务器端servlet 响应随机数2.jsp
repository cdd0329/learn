<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
  <title>My JSP 'index.jsp' starting page</title>
  <script type="text/javascript">
  /*
    ajax 的几个步骤：
    1、建立XmlHttpRequest对象
    2、设置回调函数
    3、使用Open方法建立与服务器的连接
    4、向服务器发送数据
    5、在回调函数中针对不同响应状态进行处理
  */
    var xmlHttp;
    function createXMLHttpRequest(){  //1建立XmlHttpRequest对象
      if(window.ActiveXObject){
        try{
          xmlHttp = new ActiveXObject("Microsoft.XMLHttp");
        }catch(e){
          alert("Error!!!");
        }
      }else{
        xmlHttp = new XMLHttpRequest();
      }
    }
    function showMes(){   //2设置回调函数
      if(xmlHttp.readyState==4){ //数据接收完成并可以使用
        if(xmlHttp.status==200){ //http状态OK
        //5、在回调函数中针对不同响应状态进行处理
          document.getElementById("sp").innerHTML = xmlHttp.responseText; //服务器的响应内容
        }else{
          alert("出错："+xmlHttp.statusText); //HTTP状态码对应的文本
        }
      }
    }
    /**
    //这是GET方法传送
    function getMes(){
      createXMLHttpRequest();
      var txt = document.getElementById("txt").value;
      var url="servlet/AjaxServlet?txt="+txt;
      url = encodeURI(url); //转换码后再传输
      xmlHttp.open("GET",url,true); //3使用Open方法建立与服务器的连接
      xmlHttp.onreadystatechange=showMes;
      xmlHttp.send(null); //4向服务器发送数据
    }
    */
    /**
    *这是post方法
    */
    function postMes(){
      createXMLHttpRequest();
      var txt = document.getElementById("txt").value;
      var url = "${pageContext.request.contextPath}/AjaxServlet";
      var params = "username="+txt;
    // alert(params);
      xmlHttp.open("GET",url,true);
      xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
      xmlHttp.send(params);
      xmlHttp.onreadystatechange = showMes;
    }
  </script>
 </head>
 <body>
  <input type="text" id="txt" name="username"/>
  <input type="button" value="query" onclick="postMes()" />
  <span id="sp"></span>
 </body>
</html>