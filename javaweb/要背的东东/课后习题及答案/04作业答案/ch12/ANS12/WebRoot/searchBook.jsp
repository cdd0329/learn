<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<script type="text/javascript">
			function showBook(){
	  			var bookname = document.inputForm.bookname.value;
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
		  		var url = "servlet/ShowBookServlet?bookname="+bookname;
				xmlHttp.open("POST", url, true);				
				xmlHttp.onreadystatechange=function() {
					if (xmlHttp.readyState==4) {
						resultDiv.innerHTML = xmlHttp.responseText;
					}
					else{
						resultDiv.innerHTML += "正在添加，请稍候......";
					}				
				};
				xmlHttp.send();	
			}
		</script>
		
			<form name="inputForm">
				请输入图书信息的模糊图书名称：
				<input type="text" name="bookname">
				<input type="button" onclick="showBook()" value="查询">			
			</form>
		<div id="resultDiv">
		</div>
	</body>
</html>
