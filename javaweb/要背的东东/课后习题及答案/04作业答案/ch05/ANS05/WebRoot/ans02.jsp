<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
       欢迎登录
  <script type="text/javascript">
      function validate(){
           if(loginForm.account.value==loginForm.password.value&&document.getElementById("register").checked){
               alert("登录成功!欢迎您注册成为会员");
               return;
           }else if(loginForm.account.value==loginForm.password.value){
              alert("登录成功");
              return;
           }else{
              alert("登录失败");
              return;
           }
           loginForm.submit();
      }
  </script>

  <form name="loginForm">
    请输入账号：<input name="account" type="text"><br>
    请输入密码：<input name="password" type="password"><br>
  <input id="register" type="checkbox">是否注册为会员<br>
  <input type="button" value="登录" onClick="validate()">
  </form>
  </body>
</html>