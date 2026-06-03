<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function aboutReg()
{
	var xhr,zh;
	zh=document.getElementById("zh").value;
	//alert("离开文本框时失去焦点：账号时"+zh);
	if(window.XMLHttpRequest)
		xhr=new XMLHttpRequest();
	else
		xhr=new ActiveXobject("Microsoft.XMLHTTP");
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200)
		  {
		alert(xhr.responseText);//	来自服务器端的数据发送到客户端
		//xhr.responseText
		document.getElementById("result").innerHTML=xhr.responseText;
		}
		
	}
	xhr.open("GET","AboutOnblurServlet?zh="+zh,true);
	xhr.send();
	}



</script>
<form name="my" action="/myajax3/RegisterServlet" method="post">
账号:<input type="text" name="zh" onblur="aboutReg()" id="zh"><span id="result">显示信息</span>
姓名：<input type="text" name="xm"><br>
<input type="submit" name="注册">
</form>

</body>
</html>