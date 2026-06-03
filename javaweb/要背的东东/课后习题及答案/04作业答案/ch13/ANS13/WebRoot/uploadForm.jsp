<%@ page language="java" pageEncoding="gb2312"%>
<html>
		<script type="text/javascript">
		 	function showFiles(){
		  		var xmlHttp=null;
		  		if(window. XMLHttpRequest){ //Mozilla等浏览器
	   			xmlHttp=new XMLHttpRequest();
				}
				else if(window.ActiveXObject){ //IE浏览器
	    			try{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					}catch(e){
	        			try{
	        				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	        			}catch(e){
	        				window.alert("该浏览器不支持AJAX");
	                    }
					}
				}
		  		var url = "ShowServlet";
				xmlHttp.open("POST", url, true);				
				xmlHttp.onreadystatechange=function() {
					if (xmlHttp.readyState==4) {
						resultDiv.innerHTML = xmlHttp.responseText;
					}
					else{
						resultDiv.innerHTML += "正在上传，请稍候......";
					}				
				};
				xmlHttp.send();		 	
		 	}
		 </script>
		 
		 <script type="text/javascript">
			function deleteFile(fileName){
		  		var xmlHttp=null;
		  		if(window. XMLHttpRequest){ //Mozilla等浏览器
	   			xmlHttp=new XMLHttpRequest();
				}
				else if(window.ActiveXObject){ //IE浏览器
	    			try{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					}catch(e){
	        			try{
	        				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	        			}catch(e){
	        				window.alert("该浏览器不支持AJAX");
	                    }
					}
				}
		  		var url = "DeleteFileServlet?fileName="+fileName;
				xmlHttp.open("POST", url, true);				
				xmlHttp.onreadystatechange=function() {
					if (xmlHttp.readyState==4) {
						showFiles();
					}
					else{
						resultDiv.innerHTML += "正在删除，请稍候......";
					}				
				};
				xmlHttp.send();		 	
		 	}
		</script>
		
		<script type="text/javascript">
			function downloadFile(fileName){
				window.location.href("../download.jsp?fileName="+fileName);
			}
		</script>
	<body onload="showFiles()">
		资源文件上传
		<hr>
		<form action="UploadServlet" method="post" 
			enctype="multipart/form-data">
			你选择一个文件进行上传：
			<input type="file" name="myFile">
			<input type="submit" value="上传">
		</form>
		${msg}
		<div id="resultDiv"></div>
	</body>
</html>
