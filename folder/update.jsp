<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑业务逻辑页面</title>
</head>
<body>
<%
    //获取参数
   
    String id = request.getParameter("txtId");
    String name = request.getParameter("txtUser");
    String sex = request.getParameter("selSex");
    String birt = request.getParameter("txtBirthday");
     request.setCharacterEncoding("utf-8");
    //连接数据库的五大参数
    String driverClass = "com.mysql.jdbc.Driver";
    String serverIp = "localhost";
    String databaseName = "myweb";
    String userName = "root";
    String pwd = "123456";
    //整合连接地址
    String jdbcUrl = "jdbc:mysql://"+serverIp+":3306/"+databaseName+"?serverTimezone=Asia/Shanghai&useSSL=true";
    
    Class.forName(driverClass);
    Connection con = DriverManager.getConnection(jdbcUrl,userName,pwd);
    //要执行的SQL语句
    String sql ="update postanimal set name=?,sex=?,age=? where postid=?";
    //DbConn dbconn = new DbConn();
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1,name);
    ps.setString(2,sex);
    ps.setString(3,birt);
    ps.setObject(4,id);
    //执行修改
    ps.execute();
    
    ps.close();
    //con.close();
    response.sendRedirect("index.jsp");
%>    
</body>
</html>