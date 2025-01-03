<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>    
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
<%
    //获取参数
    String name = request.getParameter("txtName");
    String sex = request.getParameter("txtSex");
    String age = request.getParameter("txtBirthday");
    //连接数据库的五大参数
    //String driverClass = "com.mysql.jdbc.Driver";
    //String serverIp = "localhost";
    //String databaseName = "myweb";
    //String userName = "root";
    //String pwd = "123456";
    //String jdbcUrl = "jdbc:mysql://"+serverIp+":3306/"+databaseName+"?serverTimezone=Asia/Shanghai&useSSL=true";
    DbConn dbconn = new DbConn();
    //Class.forName(driverClass);
    //Connection con = DriverManager.getConnection(jdbcUrl,userName,pwd);
    String sql ="insert into postanimal(user_name,sex,age) values(?,?,?)";
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
    ps.setString(1,name);
    ps.setString(2,sex);
    ps.setString(3,age);
    ps.executeUpdate();
   // con.close();
    response.sendRedirect("add.jsp");
%>
</body>
</html>