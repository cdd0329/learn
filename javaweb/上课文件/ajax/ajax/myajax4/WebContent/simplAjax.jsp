<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 测试客户端输入的数据是否是 :test  -->
<script src="./js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#name").blur(function() {
                var value = $("#name").val();

                // 使用ajax发送请求
                $.ajax({
                      url: "SimpleAjaxServlet", // 要访问的地址，这里访问的是servlet映射地址
                      cache: false,  // 是否缓存
                      data: "name="+value, // 相当于地址栏后面的参数
                      success: function(result){ // 访问成功后，执行的方法，参数是后台的结果
                        // 将获取到的数据写入span标签
                        $("#sp").text(result);
                      }
                })

            });

        })
    </script>
<body>

    <form action="SimpleAjaxServlet" method="post">
        姓名：<input type="text" id="name" > <span id="sp"></span>
    </form>

</body>

</html>