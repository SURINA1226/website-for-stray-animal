<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page import=" java.sql.* "%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
<% 
    //取查询的名字
    String selectName = request.getParameter("txtSelect");
%>

<form action="index.jsp">
<h3 align='center'>
请输入要查询的的名字：<input type="text" name="txtSelect" value="<%=selectName==null?"":selectName%>">
                    <input type="submit" name="btnSelect" value="开始查询">
</h3>
</form>

<table border="1" width="80%" align='center'>
    <tr>
        <td></td>
        <td>序号</td>
        <td>名字</td>
        <td>性别</td>
        <td>出生日期</td>
        <td>操作</td>
    </tr>
    
<%    
    //连接数据库的五大参数
      // DbConn dbconn = new DbConn();
    String driverClass = "com.mysql.jdbc.Driver";
    String serverIp = "localhost";
    String databaseName = "myweb";
    String userName = "root";
    String pwd = "123456";
    String table = "postanimal";
    String jdbcUrl = "jdbc:mysql://"+serverIp+":3306/"+databaseName+"?serverTimezone=Asia/Shanghai&useSSL=true";
    String sql = "select * from "+table;
    
    //读取JDBC
    Class.forName(driverClass);
    //链接数据库
    Connection con = DriverManager.getConnection(jdbcUrl,userName,pwd);
    
    //如果为空，代表当前的状态不是查询，而是查询所有的内容
    PreparedStatement ps ;
   // ResultSet rs;
     //ResultSet rs = dbconn.exeQuery(sql);   
    if(selectName == null){
        //判断查询文本框里面是否有内容，如果没有则执行查询全部信息
         ps = con.prepareStatement(sql);
        // rs=dbconn.exeQuery(sql);
    }else{
        //如果有，则根据文本框的里面的内容在数据库根据姓名查询
         ps =con.prepareStatement("select * from postanimal where name like ?");
        ps.setString(1,'%'+selectName+'%');
        //rs = ps.executeQuery(); 
    }

    //ResultSet是一个指向数据库的变量，本质上是不保存任何数据的，执行查询
    ResultSet rs = ps.executeQuery(); 
    //boolean flag = rs.next();   //判断返回指针是否还能继续往下移动
    //显示序号
    int i = 1;  
    while( rs.next()){
%>

    <tr>
        <td><%out.print(i++);%></td>
        <td><%=rs.getString("postid") %></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("sex")%></td>
        <td><%=rs.getString("age") %></td>
        <td>
        <a href="add.jsp">添加</a>
        <a href="edit.jsp?postid=<%=rs.getString("postid")%> ">编辑</a> 
             <a href="delete_action.jsp?postid=<%=rs.getString("postid")%>">删除</a>
        </td>
    </tr>
<%
    }
%>    
</table>

<h1 align="center">共计<%=i-1%>条记录</h1>
<% 
//    ps.close();
    rs.close();
%>

</body>
</html>