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
    String postid = request.getParameter("txtpostid");
    String name = request.getParameter("txtname");
    String time = request.getParameter("txttime");
    String content = request.getParameter("txtcontent");
    DbConn dbconn = new DbConn();
    String sql1="select * from message";
    ResultSet rs;
     rs=dbconn.exeQuery(sql1);
      int i = 1;  
    while( rs.next()){i++;}
    DbConn dbconn1 = new DbConn();
    String sql ="insert into message(id,postid,username,time,content) values(?,?,?,?,?)";
    PreparedStatement ps = dbconn1.getstate(sql);
    ps.setInt(1,i);
    ps.setString(2,postid);
    ps.setString(3,name);
    ps.setString(4,time);
    ps.setString(5,content);
    ps.executeUpdate();
    response.sendRedirect("message.jsp");
%>
</body>
</html>