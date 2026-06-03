<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
         ª∂”≠µ«¬º
  <script type="text/javascript">
   
      function validate(){
           if(loginForm.account.value!=""&&loginForm.password.value!=""&&loginForm.account.value==loginForm.password.value){
               loginForm.submit();
               return;
           }else{
              alert("µ«¬º ß∞‹");
              return;
           }
          }
          
  </script>  
  <form name="loginForm" action="ans03_1.jsp" method="post">
    «Î ‰»Î’À∫≈£∫<input name="account" type="text"><br>
    «Î ‰»Î√‹¬Î£∫<input name="password" type="password"><br> 
 <input type="button" value="µ«¬º" onClick="validate()">
  </form>
</body>
</html>
