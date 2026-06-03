<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="./js/jquery-1.11.1.min.js">
</script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $.post("AcceptServlet",
    {
      name:"Donald Duck",
      city:"Duckburg"
    },
    function(data,status){
      alert("数据：" + data + "\n状态：" + status);
    });
  });
});
</script>
</head>
<body>

<button>向页面发送 HTTP POST 请求，并获得返回的结果</button>


</body>
</html>