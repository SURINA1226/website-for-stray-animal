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
    String postid = request.getParameter("txtpostid");
    String money = request.getParameter("txtmoney");
    String purpose = request.getParameter("txtpurpose");
    String residue = request.getParameter("txtresidue");
     request.setCharacterEncoding("utf-8");
    //要执行的SQL语句
    String sql ="update donation set postid=?,money=?,purpose=?,residue=? where donateid=?";
    DbConn dbconn = new DbConn();
    PreparedStatement ps = dbconn.getstate(sql);//prepareStatement(sql);
    ps.setString(1,postid);
    ps.setString(2,money);
    ps.setString(3,purpose);
    ps.setString(4,residue);
    ps.setObject(5,id);
    //执行修改
    ps.execute();
    ps.close();
    response.sendRedirect("donation.jsp");
%>    
</body>
</html>