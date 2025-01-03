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
    String title=request.getParameter("txttitle");
    String time=request.getParameter("txttime");
    String name = request.getParameter("txtname");
    String sex = request.getParameter("txtsex");
    String age = request.getParameter("txtage");
    String breed=request.getParameter("txtbreed");
    String character=request.getParameter("txtcharacter");
    String history=request.getParameter("textarea");
    String health=request.getParameter("txthealth");
    String picture="images/"+request.getParameter("file0");
    DbConn dbconn1 = new DbConn();
    String sql1="select * from postanimal";
    ResultSet rs1;
     rs1=dbconn1.exeQuery(sql1);
      int i = 1;  
    while( rs1.next()){i++;}
    DbConn dbconn = new DbConn();
   // String sql ="insert into postanimal(postid,title,name,sex,age,breed,character1,history,picture) values(?,?,?,?,?,?,?,?,?)";
     String sql ="insert into postanimal(postid,title,name,sex,age,breed,character1,history,health,picture,time) values(?,?,?,?,?,?,?,?,?,?,?)";
   
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
    ps.setInt(1,i);
    ps.setString(2,title);
    ps.setString(3,name);
    ps.setString(4,sex);
    ps.setString(5,age);
    ps.setString(6,breed);
    ps.setString(7,character);
    ps.setString(8,history);
    ps.setString(9,health);
    ps.setString(10,picture);
    ps.setString(11,time);
    ps.executeUpdate();
   // con.close();
    response.sendRedirect("postanimal.jsp");
%>
</body>
</html>