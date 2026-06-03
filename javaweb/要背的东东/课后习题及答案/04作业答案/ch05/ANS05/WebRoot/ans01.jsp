<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
       »¶Ó­µÇÂ¼
  <script type="text/javascript">
      function validate(){
           if(loginForm.account.value==loginForm.password.value){
               alert("µÇÂ¼³É¹¦");
               return;
           }else{
              alert("µÇÂ¼Ê§°Ü");
              return;
           }
           loginFrom.submit();
      }
  </script>

  <form name="loginForm">
    ÇëÊäÈëÕËºÅ£º<input name="account" type="text"><br>
    ÇëÊäÈëÃÜÂë£º<input name="password" type="password"><br>
  <input type="button" value="µÇÂ¼" onClick="validate()">
  </form>
  </body>
</html>
