<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">	
</script>
</head>
<body>
		<center>
		<a href="add.jsp">增加学生</a><br/>
		
			<table border="1" width="50%">
				<tr>
					<th>姓名</th>
					<th>年龄</th>
					<th>身高</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${list}" var="stu">
					<tr>
						<td>${stu.name}</td>
						<td>${stu.age}</td>
						<td>${stu.height}</td>
						<td><a href="stu?mark=update&sid=${stu.sid}">修改</a>|<a href="stu?mark=delete&sid=${stu.sid}">删除</a></td>
					
					</tr>
				</c:forEach>
			
			</table>		
	
	
	</center>

</body>
</html>
