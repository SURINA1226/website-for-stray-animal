<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>

</head>
<body>
<%
//获取参数
    String id = request.getParameter("postid");
    //连接数据库的五大参数
    String driverClass = "com.mysql.jdbc.Driver";
    String databaseName = "myweb";
    String serverIP = "localhost";
    String user = "root";
    String pwd = "123456";
    //DbConn dbconn = new DbConn();
    //拼凑成一个完整的Url地址
    String jdbcUrl = "jdbc:mysql://"+serverIP+":3306/"+databaseName+"?serverTimezone=Asia/Shanghai&useSSL=true";
    
    Class.forName(driverClass);
    Connection con = DriverManager.getConnection(jdbcUrl,user,pwd);
    String sql = "select * from postanimal where postid = ?";
    //创建对象
      PreparedStatement ps = con.prepareStatement(sql);
      //将字符串的id转换成int型的id
      ps.setObject(1, id);
      ResultSet rs= ps.executeQuery();
      if(rs.next()){
%>

<form action="update.jsp" >
    <input type="hidden" name="txtId" value="<%=rs.getString("postid") %>">
    姓名：<input type ="text" name="txtUser" value="<%=rs.getString("name")%>"><br>
    性别：
    <select name="selSex">
        <option value="男" <%if(rs.getString("sex").equals("男")){out.print("selected");} %> >男</option>
        <option value="女" <%if(rs.getString("sex").equals("女")){out.print("selected");} %>>女</option>
        <option value="其他" <%if(rs.getString("sex").equals("其他")){out.print("selected");} %>>其他</option>
    </select><br>
    出生日期：<input type ="text" name="txtBirthday" value="<%=rs.getString("age") %>"><br>
    <input type="submit" value="确认更新" name="btnsub">
</form>

<%
      }else{
          response.sendRedirect("error.jsp");
      }
      rs.close();
      ps.close();
      //con.close();
%>
</body>
</html>