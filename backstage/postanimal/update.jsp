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
    String id=request.getParameter("txtid");;
     String title=request.getParameter("txttitle");
    String time=request.getParameter("txttime");
    String name = request.getParameter("txtname");
    String sex = request.getParameter("txtsex");
    String age = request.getParameter("txtage");
    String breed=request.getParameter("txtbreed");
    String character=request.getParameter("txtcharacter");
    String history=request.getParameter("textarea");
    String health=request.getParameter("txthealth");
    String picture="";
    DbConn dbconn1 = new DbConn();
    String sql1="select * from postanimal where postid="+id;
    ResultSet rs1=null;
    rs1=dbconn1.exeQuery(sql1) ;
    while(rs1.next()){ 
        picture=rs1.getString("picture");}
    if(request.getParameter("file0")!="")
     picture="images/"+request.getParameter("file0");
     request.setCharacterEncoding("utf-8");
    //要执行的SQL语句
    String sql ="update postanimal set title=?,name=?,sex=?,age=?,breed=?,character1=?,history=?,health=?,picture=?,time=? where postid=?";
    DbConn dbconn = new DbConn();
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
     ps.setString(11,id);
    ps.setString(1,title);
    ps.setString(2,name);
    ps.setString(3,sex);
    ps.setString(4,age);
    ps.setString(5,breed);
    ps.setString(6,character);
    ps.setString(7,history);
    ps.setString(8,health);
    ps.setString(9,picture);
    ps.setString(10,time);
    //执行修改
    ps.execute();
    ps.close();
    response.sendRedirect("postanimal.jsp");
%>    
</body>
</html>