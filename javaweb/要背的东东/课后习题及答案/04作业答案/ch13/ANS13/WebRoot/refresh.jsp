<%@ page language="java" pageEncoding="gb2312"%>
<html>
	<body>
	<script type="text/javascript">
		function refresh(){
			//生成只包含数字的验证码
			loginForm.imgValidate.src = "validate.jsp?id=" + Math.random();
			//生成包含数字和字符的验证码
			//loginForm.imgValidate.src = "validateMix.jsp?id=" + Math.random();
		}
	</script>
	欢迎登录本系统<BR>
	<form name="loginForm" action="servlet/ValidateServlet" method="post">
		<table>
			<tr>
				<td>请您输入账号:</td>
				<td><input type="text" name="account" /></td>
			</tr>
			<tr>
				<td>请您输入密码: </td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>请输入验证码:</td>
				<td><input type="text" name="code" size="10">
				<!-- 生成只包含数字的验证码 -->
				<img name="imgValidate" src="validate.jsp" style="vertical-align: middle;"></td>
				<!-- 生成包含数字和字符的验证码 -->
				<!-- 
				<img name="imgValidate" src="validateMix.jsp" style="vertical-align: middle;"></td>
				 -->
				<td><a onclick="refresh()" href="#" style="font-size: 10; text-decoration: none;">重新获取验证码</a></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登录">	</td>
			</tr>
		</table>
	</form>		
	</body>
</html>
