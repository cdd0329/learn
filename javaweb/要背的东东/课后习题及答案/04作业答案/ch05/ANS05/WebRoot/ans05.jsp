<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
       ª∂”≠µ«¬º
  <script type="text/javascript">
   
      function validate(){
           if(loginForm.account.value!=""&&loginForm.password.value!=""&&loginForm.account.value==loginForm.password.value){
             alert("µ«¬º≥…π¶");
               loginForm.submit();
               return;
           }else{
              alert("µ«¬º ß∞‹");
              return;
           }
          }
          
  </script>  
  <form name="loginForm" action="ans05_1.jsp" >
    «Î ‰»Î’À∫≈£∫<input name="account" type="text"><br>
    «Î ‰»Î√‹¬Î£∫<input name="password" type="password"><br> 
 <input type="button" value="µ«¬º" onClick="validate()">
  </form>
 
  </body>
</html>