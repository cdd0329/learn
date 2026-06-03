<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		 <script type="text/javascript">
		 	function addBook(){
				var id = document.addForm.id.value;
	  			var bookname = document.addForm.bookname.value;
	  			var bookprice = document.addForm.bookprice.value;  	
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
		  		var url = "servlet/AddBookServlet?id="+id+"&bookname="+bookname+"&bookprice="+bookprice;
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
		 
		<!-- 添加图书 -->
		<div>欢迎进入图书管理系统. <hr></div>
		<form name="addForm">
			<table>
				<tr>
					<td>书本号:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>图书名称:</td>
					<td><input type="text" name="bookname"></td>
				</tr>
				<tr>
					<td>图书价格:</td>
					<td><input type="text" name="bookprice"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" onclick="addBook()" value="提交"></td>
				</tr>
			</table>
		</form>
		<div id="resultDiv">
		</div>
	</body>
</html>
