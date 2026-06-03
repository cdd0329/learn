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
function refresh()
{
	my.chg.src="verfy.jsp?id="+Math.random();
	
	}

</script>
<form name="my" action="login.jsp" method="post">
账号:<input type="text" name="zh"><br>
密码:<input type="text" name="pwd"><br>
验证码:<input type="text"><img  name="chg" border=0 src="verfy.jsp"  onclick="refresh()">

</form>

</body>
</html>