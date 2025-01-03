<%-- 
    Document   : show
    Created on : 2020-6-25, 11:25:32
    Author     : Administrator
--%>
    <%@ page import="java.sql.*" %>
    <%@page import="text.bean.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>流浪猫狗救助平台</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"  />
    </head>
    <body>
       <div class="wrap clearfix">
<!-- left nav start -->
  <div class="index_left fl">
    <div class="logo"><img src="images/logo.jpg" /></div>
    <div class="nav">
      <ul>
       <li id="nav_01"><a href="index.html" >网站首页</a></li>
        <li><a href="index.html#aboutus" >关于我们</a></li>
        <li><a href="index.html#picturewall" >照片墙</a></li>
        <li><a href="index.html#ourwork" >我们的工作</a></li>
        <li><a href="show.jsp" >动物帖子</a></li>
        <li><a href="contact.html" >联系我们</a></li>
      </ul>
    </div>
    
  </div>
<!-- left nav end-->
  
  <!--right-->
  <div class="show_right fr">
   
    <div class="main">
     <div class="locat">当前位置：<a href="index.html">首页</a> > <a href="show.jsp">动物帖子</a></div>   
      <!--图片-->
      <div class="showpic clearfix">
        <ul>
            <%    
                //连接数据库的五大参数 
                DbConn dbconn = new DbConn();
                String sql = "select * from postanimal" ;
                ResultSet rs;
                rs=dbconn.exeQuery(sql);
                while( rs.next()){
            %> 
          <li class="no_mar"><a href="animal.jsp?id=<%=rs.getString("postid")%>"><img src="<%=rs.getString("picture")%>"  /><span><%=rs.getString("name")%></span></a></li>
          
          <%
                }
            %>
        </ul>
      <!--分页-->  
      <div class="Page clearfix">
     <span>46 条记录 1/6 页</span>  <a href="">下一页</a><span class="current">1</span>
	 <a href="">&nbsp;2&nbsp;</a>
	 <a href="">&nbsp;3&nbsp;</a>
	 <a href="">&nbsp;4&nbsp;</a>
	 <a href="">&nbsp;5&nbsp;</a>
	 <a href="">下5页</a>
	 <a href="">末页</a> 
  </div>
  
     <!--footer start-->
    <div class="footer">
      <div class="footer01">流浪猫狗救助平台</div>
      <div class="footerwby">
      </div>
    </div>
    <!--footer end-->
      
      </div>
    </div>

  </div>
        </div>
    </body>
</html>
