<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import=" java.sql.* "%>
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除的业务逻辑执行页面</title>
</head>
<body>
<%
    //获取参数
    String id = request.getParameter("postid");
    //拼凑成一个完整的Url地址
   DbConn dbconn = new DbConn();
    String sql = "delete from postanimal where postid = ?";
    PreparedStatement ps = dbconn.getstate(sql);
    //对应sql语句的问号跟上面从页面获取的参数相对应
    ps.setObject(1,id);
    //执行删除
    ps.executeUpdate();
    //关闭连接
    ps.close();
    //完成删除后跳转回index页面
    response.sendRedirect("postanimal.jsp");
%>
</body>
</html>