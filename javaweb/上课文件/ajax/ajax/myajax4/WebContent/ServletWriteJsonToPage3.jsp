<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 测试客户端输入的数据是否是 :test 
使用JSONObject或者JSONArray 要导入json.jar包

 -->
<script src="./js/jquery.min.js"></script>
   <script type="text/javascript">
        $(function(){
            $("#name").blur(function() {
                var value = $("#name").val();

                // 使用ajax发送请求
                $.ajax({
                      url: "JsonAjaxServlet2", // 要访问的地址
                      cache: false,  // 是否缓存
                      type:"get",
                      data: "name="+value, // 相当于地址栏后面的参数
                      dataType: "json", // 指明返回结果的类型,可以是html,js等
                      success: function(json, ajaxState){ 
                          // 第一个返回json的值，第二个返回ajax处理状态
                        $("#sp").text(json.message[0]+"----"+ajaxState);
                      }
                })

            });

        })
    </script>


<body>

    <form action="JsonAjaxServlet" method="post">
        姓名：<input type="text" id="name" > <span id="sp"></span>
    </form>

</body>

</html>