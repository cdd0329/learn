<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<script type="text/javascript">
		
	</script>
	<body>
		<hr>
		已上传文件列表
		<table>
			<tr>
				<td>文件名称</td>
				<td>操作</td>
			</tr>	
			<c:forEach items="${fileList }" var="file">
				<tr>
					<td>${file }</td>
					<td><input type="button" onclick="deleteFile('${file }')" value="删除"/>
					    <input type="button" onclick="downloadFile('${file }')" value="下载"/></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>
