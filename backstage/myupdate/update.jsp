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
   //获取参数
    String id=request.getParameter("txtid");;
    String postid=request.getParameter("txtpostid");
    String time=request.getParameter("txttime");
    String content="";
    String vedio="" ;
    String picture="";
    DbConn dbconn1 = new DbConn();
    String sql1="select * from myupdate where id="+id;
    ResultSet rs1=null;
    rs1=dbconn1.exeQuery(sql1) ;
    while(rs1.next()){ 
        picture=rs1.getString("picture");
        vedio=rs1.getString("vedio");
    }
    if(request.getParameter("file0")!="")
        picture="images/"+request.getParameter("file0"); 
    if(request.getParameter("txtvedio")!=""||request.getParameter("txtvedio")!=null)
        vedio= "images/"+request.getParameter("txtvedio");
    if(request.getParameter("txtcontent")!="")
        content=request.getParameter("txtcontent");
     request.setCharacterEncoding("utf-8");
    //要执行的SQL语句
    String sql ="update myupdate set postid=?,time=?,content=?,picture=?,vedio=? where id=?";
    DbConn dbconn = new DbConn();
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
     ps.setString(6,id);
    ps.setString(1,postid);
    ps.setString(2,time);
    ps.setString(3,content);
    ps.setString(4,picture);
    ps.setString(5,vedio);
    //执行修改
    ps.execute();
    ps.close();
    response.sendRedirect("myupdate.jsp");
%>    
</body>
</html>