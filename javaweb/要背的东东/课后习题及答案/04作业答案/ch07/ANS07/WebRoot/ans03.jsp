<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
       »¶Ó­µÇÂ¼
  <script type="text/javascript">
   
      function validate(){
           if(loginForm.account.value!=""&&loginForm.password.value!=""&&loginForm.account.value==loginForm.password.value){
             alert("µÇÂ¼³É¹¦");
               loginForm.submit();
               return;
           }else{
              alert("µÇÂ¼´íÎó");
              return;
           }
          }
          
  </script>  
  <form name="loginForm" action="ans03_1.jsp" >
    ÇëÊäÈëÕËºÅ£º<input name="account" type="text"><br>
    ÇëÊäÈëÃÜÂë£º<input name="password" type="password"><br> 
 <input type="button" value="µÇÂ¼" onClick="validate()">
  </form>
 
  </body>
</html>