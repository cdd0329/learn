# 重点 : JAVA WEB 开发技术包括客户端技术和服务器端的技术。

## 一、 客户端技术

1. html 基本结构: 
   ```
   <html>  <head> <body> 
   ```
2. 常用标签：
   - 图片 
     ```
     <img src=""/>
     ```
   - 有序列表、<ul>无序列表</ul>、自定义列表： 如： 用<ol>来创建有序列表，<li> 创建列表项
     ```html
     //无序列表
        <ul>
        <li>中国</li>
        <li>日本</li>
        <ul>
     //有序列表
        <ol>
        <li>法国</li>
        <li>德国</li>
        <ol>
     
     ```
   - 表格:
     ```html
     <table>
     <tr>  //行
       <th>11</th>  //表头第一格
       <th>12</th>  //表头第二格
       <th>13</th>
     </tr>
     <tr>  //行
       <td>11</td>  //第一行第一格
       <td>12</td>  //第一行第二格
       <td>13</td>
     </tr>
       </table>
     ```
   - 按钮:
     ```
     <input type="submit/reset/button"value=">
     <button type="submit/reset">提交</button>
     ```
3. CSS 样式：
   - 选择器：（填空）
     ```css
     id 选择器:
     #okok{color:blue;}
     <div id="okok">演示id选择器</div>
     类名选择器:
           .ok{color:red;}
           <div class="ok">演示类名选择器（class选择器）</div>
     类型选择器:
           <span>演示类型选择器(标签选择器)</span>
     元素选择器：$("p")
     ```
   - Jquery选择器
     ```
     1.标签选择：$("input")
     2.类选择 x
     3.ID选择：$("#name1")
     4.属性选择：$("[name='name2']
     ```
   - 文字设计标签：
     ```
     <font></font>标签
     font-family: '黑体'; /* 字族 */
     font-weight: bold ; /* 粗体 */
     font-style: italic; /* 斜体 */
     font-size: 50px;   /* 字号大小 */
     
     <b>内容</b>  //粗体
     <i>内容</i>  //斜体
     ```

   - 背景样式：背景颜色、背景图片
     ```
     .myDiv{
            width: 300px;
            height: 300px;
            background-color:red;//背景颜色
            background-image:url("路径"); //背景图片
         }
          <div class="myDiv"></div>
     ```
   - 定位样式：(需要记住后面的几个单词)
     - 绝对定位:  position:absolute
     - 相对定位:   position:relative
     - 静态定位:   position:static
     - 固定定位:   position:fixed
2. javaScript 和jQuery
   - js 基本使用:定义变量和函数：
     ```
        <script>
           //变量
             var a= 5+9;
             alert(a);//在弹框中显示“14”
             var name = "hkx";
           //函数
             function getMax(a,b){
                return a>b?a:b; //如果这一行被注释，则会返回 undefined
             }
             var max = getMax(56,78);
             alert(max);
               </script>
     ```
   - 数组操作：
     定义：
     
     ```
     <script>
     var arr=["aa,bb,cc"];//var arr=new Array();
       console.info(arr);//显示
       var v = "dd";
       arr.push(v);//放到数组最后面
       arr.unshift(v);//放到数组最前面
       </script>
     ```
     - 遍历for
     - 往数组最后添加一个元素 push
     - 往开头添加一个元素 unshift
   - 常见的函数
     - json 的转换：
       
     - .......
       
       ```
       <script>
        var obj={"name":"hkx";"age":38};
        var text = JSON.stringify(obj);//对象转换为字符串
        var obj1 = JSON.parse(text);//字符串解析成对象
        console.info(text);//打印
         </script>
       ```
       
     - 字符串转对象：JSON.parse(text) 
     
     - 对象转字符串: JSON.stringify(obj)
     
     - 字符串转成数字: parseInt
       ```
       <script>
          var str1 = "1578";
          var num = parseInt(str1);
          console.info(num+1);//输出为1579
          </script>
       ```
       
     - 定时器 :
       
       setTimeout
       ```
       <script>
        //setTimeout
          function show(){
            console.info(Math.random());//输出一个随机数
          }
          setTimeout(show,3000);//三秒钟后执行show
        </script>
       ```
     
      setInterval
     ```
        <script>
        //setInterval
        var a= 0;
        function show(){
          console.info(Math.random());//输出一个随机数
          a++;
          if(a>=10){
            clearInterval(t1);//消除定时器
          }
        } 
        var t1= setInterval(show,1000);//原本一直每秒一个show;加上if后，1秒一个，五秒后结束；
      </script>
     ```
     

  ==计时事件（简答题）==
     - setTimeout() 和 setInterval()这两个函数都有定时执行的作用，setTimeout只执行一次,setInterval会不断执行，直到clearInterval()停止。
          - setTimeout() 和 setInterval()都是接受两个参数，第一个参数是执行的函数，第二个是延迟的毫秒数。
          - setTimeout() 和 setInterval() 都返回一个定时器ID，通过clearTimeout() 和 clearInterval()来消除定时器。

   - 正则表达式基本使用
     
     - var reg = /ab+c/;
   - **==javaScript 的异步编程（简答题）==****
      **1、JavaScript中的异步编程是指在代码执行过程中，不需要等待某些操作完成就可以继续执行后续代码的一种编程方式,异步编程可以提高代码的性能和可维护性，避免了阻塞线程等问题，因此在JavaScript中被广泛应用。**
          
      **在JavaScript中，常见的异步编程方式包括回调函数、Promise和async/await。**
          
      **1.1 回调函数是一种最基础的异步编程方式，它通过将需要异步执行的代码封装在一个函数中，并在操作完成后调用该函数来实现异步执行。例如，可以在setTimeout()函数中传递一个回调函数，在延迟指定时间后执行该回调函数。**
          
      **1.2 Promise是一种更高级的异步编程方式，它可以更好地处理异步操作的结果和错误。Promise可以将异步操作封装成一个Promise对象，并使用.then()和.catch()方法处理异步操作的结果和错误。**
          
      **1.3 async/await是ES2017中引入的一种异步编程方式，它可以更直观地编写异步代码。使用async/await可以将异步操作看作同步操作，通过async函数定义异步函数，使用await关键字等待异步操作完成并返回结果。****
          
     jsp代码
     
     1.JSP程序段的用法是（A)
     
     A.<% Java 代码%>
     
     2.下面代码段是正确的
     
     ```
     <%
       out.println(str);  //换行了，所以在 <% %>里面有了；
     %>
     ```
     
     凡是没有写到<% %> 中的代码均被解释为HTML
     
     3.下面的代码是对的（选择题）
     
     ```
     <%@ page import="java.uitl.Date"language="java"
     contentType="text/html;charset=gb2312"%>
     //这会没有换行，有；也是对的
     ```
     
     4.request对象获取请求信息的方法是：==<u>getParameter（）</u>==
     
     5.引入Java类，哪一个是正确的（选择）
     
     ```
     <%@ page language="java" import="java.util.*"pageEncoding="gb2312"%>
     ```
     
     6.访问范围大小排序（填空）
     
     <u>==pagecontext<page<request<session<application==</u>
     
     7.Servlet中的两个处理请求方法是：<u>==doGet()==</u>、<u>==doPost()==</u>

  8.在 Servlet中主要使用HttpServlretResponse类的重定向方法：<u>==sendRediect（）==</u>实现重定向，使用RequestDispatcher类的转发方法<u>==forward()==</u>实现转发功能。
     
     9.在Servlet中，HttpServletResponse的(C)方法用来把一个HTTP请求重定向到另外的URL。
      
     A.sendURL()  B.redirectURL() C.==sendRedirect()== D.redirectResponse()
     
     10.JavaBean有4个scope，他们分别是 ==<u>page、request、 session、 application</u>==
   - **Servlet生命周期**
      **1.request到达Servlet容器，容器判断当前requesti指向的Servelt对象是否存在。** 
     **如果不存在，则进行初始化操作。**
        **Servlet容器会实例化(new)该Servlets对象，并调用该对的init(ServletConfig config)方法**
   
     **2.执行请求处理操作，该阶段会调用service（）方法处理每个到达的请求**
     
     **3.清理阶段，当该对象被容器移除时，会调用该对象的destroy()方法**
   - **Servlet获取参数**
     
     **1.Object obj=request.getParameter("key");**
     
     **2.Object[] objs=request.getParameterValues();**
   - JavaScript正则表达式：
     
     1.var reg=/expression/
  
     2.var reg=new RegExp("expression")
   - JavaScript访问对象的两种方式：
     
     1.点表达式，foo.att
     
     2.数组表达式，foo["att"]
   - JSP语法
      1.<%--%>注释
      2.<%@%>指令
     3.<%!%>声明
     
     4.<%Java代码表达式%>String="4"+"2"
     
     5.<%=%>相当于out.print("4"+"2"）；
   - CSS选择器
     
     1.标签选择器：HTML5的标签，使用方式：标签名{}
     
     2.类选择器：class属性，使用方式：.className{}
     
     3.ID选择器：id属性，使用方式：#ID{}

## 二、服务器技术

1. Servlet 
   
   文件在：hkxhkx/MyServlet中
   ```
   //重写doGet和doPost两个方法：
   public class Myservlet extends HttpServlet{ //一个类继承HttpServlet
     @Override
     protected void doGet(HttpServletRequest request,HttpServletRreponse response) throws ServletException, IOException{//重点 最核心的两个对象：request请求 response应用
       System.out.println("我是一个中国人，我骄傲!");//想要输出需要配置
       //super.doGet(req,resp);
     }
     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       this.doGet(request,response);
     }
   }
   ```
   - Servlet 的配置： web.xml的方式和注解方式
     
     第一种方法：
     ```
     web.xml文件夹中：
          <servlet>
            <servlet-name>my</servlet-name>
            <servlet-class>hkxhkx/MyServlet</servlet-class>//中间为上面代码的文件路径中
          </servlet>
          <servlet-mapping>
            <servlet-name>my</servlet-name>
            <url-pattern>/test11</url-pattern>//一个路径，会直接执行doGet这个方法
          </servlet-mapping>
          //test11是个路径，会找到my，再通过my找到hkxhkx/MyServlet这个类，从而找到doGet这个方法
     ```
     
     第二种方法：
     
      在类的上一行加上：
     ```
     @WrbServlet("//text11")
     ```
   - 生命周期：第一次访问的时候被创建，服务器（Servlet容器）关闭的时候销毁。  
     
     文件在：hkxhkx/MyServlet中
     ```
     @Override
     public void destroy(){//销毁时调用
      System.out.println("我活腻了");
      //super.destroy();
     }
     ```
     ```
     @Override
     public void init() throws servletException{ //服务器开启时调用一次
        System.out.println("我出生了");
        //super.init();
     }
     ```
   - Servlet 是线程不安全的，专业上称为非线程安全。共享数据的时候，可以写同步方法来实现线程安全
     
     //一个判断一个选择
   - 两个核心的接口：HttpServletRequest 和 HttpServletResponse 对象，分别处理"客户端发起的请求"和"服务器端的响应"。
     - request 可以获取请求参数
     - request 可以获取请求头信息
     - request 可以设置属性
     - request 可以转发请求
   - 转发和重定向
     - request.getRequestDispatcher("/show.jsp").==forward==（request,response);//转发
     - response.==sendRedirect==("/show.jsp");
     - sendError()也是进行跳转，它的作用是向客户发送HTTP状态码的出错信息。
   
2. ==JSP（简答题）==
   - jsp 内置对象及其作用（9个）
       (1)out对象：负责管理对客户端的输出。
       
       (2)request对象：负责得到客户端的请求信息。
       
       (3)response对象：负责向客户端发出响应。
       
       (4)session对象：负责保存同一客户端一次会话过程中的一些信息。
       
       (5)application对象：表示整个应用的环境信息。
       
       (6)exception对象：表示页面上发生的异常，可以通过它获得页面异常信息。
       
       (7)page对象：表示的是当前JSP页面本身，就像Java类定义中的this一样。
       
       (8)pageContext对象：表示的是此JSP的上下文。
       
       (9)config对象：表示此JSP的ServletConfig。
   - EL 表达式的功能很强大的，
     - EL 表达式中既可以调用方法，又可以通过param 内置对象来直接获取参数。
     - 在jsp 中，以下三种代码是同一个效果，会jsp与el表达式相互转化
       ```jsp
         <% out.print(user.getName());%>  直接out输出
         <%= user.getName()%>     表达式输出jsp
         ${user.name}  EL 表达式
       ```
       - EL 表达式也有隐藏的内置对象
       EL 表达式的内置对象和JSP的内置对象只有一个是相同的 pageContext
   
3. ==MVC 模式（简答题）==
   
   MVC 是一个常见的软件开发模式（设计模式），分为 模型（Model）、视图(View)、控制器(Controller),降低程序的耦合度，提高内聚性和扩展性。
   
   模型表示业务数据和业务逻辑。如实体类、服务层、dao层等代码模块
   
   视图表示用户界面
   
   控制层协调模型和视图之间的交互，用户操作转换成模型的操作，并将模型展示到视图中。
   
   采用MVC模式有助于代码的可复用性，开发人员更容易合作，修改、测试等好处。提高开发效率。（好处）
   
   ==书上写的：==
   
   在Web开发中，MVC思想的核心概念如下。
   
   (1)M(Model):封装应用程序的数据结构和事务逻辑，集中体现应用程序的状态，当数据状态改变的时候能够在视图里面体现出来。JavaBean非常适合这个角色。
   
   (2)V(View):它是Model的外在表现，当模型状态改变时有所体现，JSP非常适合这个角色。
   
   (3)C(Controller):对用户的输入进行响应，将模型和视图联系到一起，负责将数据写到模型中，并调用视图。Java Servlet非常适合这个角色。
   
   好处：
   
   （1）适合分工，每一个程序员只需要关心自己需要关心的那个模块。  
   
   （2）维护方便，例如需要修改其中的一个部分，则对相应的模块进行修改就可以了。
