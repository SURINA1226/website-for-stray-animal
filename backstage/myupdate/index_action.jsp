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
    String postid=request.getParameter("txtpostid");
    String time=request.getParameter("txttime");
    String content="";
    String vedio="" ;
    String picture="";
    if(request.getParameter("file0")!="")
    { picture="images/"+request.getParameter("file0"); }
    if(request.getParameter("txtvedio")!="")
    { vedio= "images/"+request.getParameter("txtvedio");}
    if(request.getParameter("txtcontent")!="")
    { content=request.getParameter("txtcontent");}
    DbConn dbconn1 = new DbConn();
    String sql1="select * from myupdate";
    ResultSet rs1;
     rs1=dbconn1.exeQuery(sql1);
      int i = 1;  
    while( rs1.next()){i++;}
    DbConn dbconn = new DbConn();
   // String sql ="insert into postanimal(postid,title,name,sex,age,breed,character1,history,picture) values(?,?,?,?,?,?,?,?,?)";
     String sql ="insert into myupdate(id,postid,time,content,picture,vedio) values(?,?,?,?,?,?)";
   
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
    ps.setInt(1,i);
    ps.setString(2,postid);
    ps.setString(3,time);
    ps.setString(4,content);
    ps.setString(5,picture);
    ps.setString(6,vedio);
    ps.executeUpdate();
   // con.close();
    response.sendRedirect("myupdate.jsp");
%>
</body>
</html>