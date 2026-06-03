<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>

<html>
 
  <body>
    <%!
    Map <String,Integer> moneyMap = new HashMap <String,Integer> ();
    private final int num_1=50;
    private final int num_2=20;
    private final int num_3=10;
    private final int num_4=5;
    private final int num_5=1;
    int money,num=0;
    boolean flag=false;
    
    private void printMoneyNuber(int money) {
      if(money>=num_1) {
    	  num=calculateNum(num_1,money);
    	  moneyMap.put(num_1+" yuan of number is :",new Integer(num));
    	  money=money-num_1*num; 
    	}
    	if(money>=num_2) {
		    	num=calculateNum(num_2,money);
		    	moneyMap.put(num_2+" yuan of number is :",new Integer(num));
		    	money=money-num_2*num;
		  }
		  if(money>=num_3) {
	    	num=calculateNum(num_3,money);
	    	moneyMap.put(num_3+" yuan of number is :",new Integer(num));
	    	money=money-num_3*num;
	    }
	    if(money>=num_4) {
	    	num=calculateNum(num_4,money);
	    	moneyMap.put(num_4+" yuan of number is :",new Integer(num));
	    	money=money-num_4*num;
	    }
	    if(money>=num_5) {
	    	num=calculateNum(num_5,money);
	    	moneyMap.put(num_5+" yuan of number is :",new Integer(num));
	    	money=money-num_5*num;
	    	}
    	num = 0;
    }
    
    private int calculateNum (int num,int money) {
    	int j=1;
    	while(money>=num*j) {
    		j++;
    	}
    	return j-1;
    }
%>

<%    
      String moneyStr = "";
      moneyStr = request.getParameter("money");

       if(moneyStr==null) {
         money=0;
      } 
       
      if(moneyStr!=null) {
		if(moneyStr.equals("")) {
         money=0;
         }
        else {
      	 try{
	        money = Integer.parseInt(moneyStr);
	        }catch (NumberFormatException e) {
              out.println("Your input is illeagal !");
            }
	      printMoneyNuber(money);
	      flag = true;
	     }
	     
	   }
%>

<form name="form" action="ans02.jsp" width="200" onSubmit=flag >
	 		<table border="1">
	 		  <tr >
	 	    	  <td>
	 	    	  	 please input money:<input type="text" name="money" value=<%=money%> >
	 	    	  </td>
	 	    	  <td>
	 	    	     <input type="submit" value="commit" />
	 	    	  </td>
	 	    </tr>
	 		
	 	  <% 
	 	    Set<Map.Entry<String,Integer>> set = moneyMap.entrySet();
	 	    for(Iterator <Map.Entry<String,Integer>> it = set.iterator();it.hasNext();) {
	 	    	Map.Entry<String,Integer> entry = (Map.Entry<String,Integer>) it.next();
	 	  %>
	 	   <tr>
	 	      <td width="40%"><%=entry.getKey() %></td>
	 	      <td><%=entry.getValue() %></td>
	 	   </tr>
	 	  <% } 
	 	     moneyMap.clear();
	 	  %>
	 	    
	   </table>
	 	</form>


  </body>
</html>
