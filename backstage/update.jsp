<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码页面</title>
</head>
<body>
<%
    //获取参数
   //获取参数
    String id=request.getParameter("txtid");;
     String password=request.getParameter("txtpassword");
   
     request.setCharacterEncoding("utf-8");
    //要执行的SQL语句
    String sql ="update adminuser set userid=?,password=? where id=?";
    DbConn dbconn = new DbConn();
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
   
    ps.setString(1,id);
    ps.setString(2,password);
    ps.setInt(3,1);
   
    //执行修改
    ps.execute();
    ps.close();
    response.sendRedirect("index.jsp");
%>    
</body>
</html>