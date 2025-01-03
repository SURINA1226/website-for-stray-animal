<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>  
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>  
<link href="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/css/bootstrap.min.css" rel="stylesheet"/>
<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<%
//获取参数
   String id = request.getParameter("id");
   DbConn dbconn1 = new DbConn();
   List<String> list=new ArrayList<String>();
   ResultSet rs1=null;
   String sql1="select postid from postanimal";
   rs1=dbconn1.exeQuery(sql1) ;
   while(rs1.next()){  list.add(rs1.getString("postid"));	  }
    DbConn dbconn = new DbConn();
    String sql = "select * from message where id = ?";
    //创建对象
      PreparedStatement ps = dbconn.getstate(sql);
      //将字符串的id转换成int型的id
      ps.setObject(1, id);
      ResultSet rs= ps.executeQuery();
      if(rs.next()){
%>


  <form action="update.jsp" >

<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >评论添加页面</th>
  </tr>
  <tr>
    <td class="CPanel">
        <legend>添加帖子</legend>

        <table >
            <tr>
              <td> <input type="hidden" name="txtId" value="<%=rs.getString("id") %>"></td>
            </tr>
            <tr>
                <td><p>帖子编号：</p></td>
                <td>
                    <select name="txtpostid" >
                            <%for(int i=0;i<list.size();i++){%>
                                <option><%=list.get(i)%></option>
                            <%}%>
                    </select>
                </td>
            </tr>
            <tr>
                <td><p>用户名 ：</p></td><td><input type ="text" name="txtUser" value="<%=rs.getString("username")%>"></td>
            </tr>
            <tr>
                <td><p>评论日期：</p></td>
                <td>
                    <div class="input-append date form_datetime">
                        <input name="txttime" size="20" type="text" value="<%=rs.getString("time") %>" readonly/>
                        <span class="add-on"><i class="icon-remove"></i></span>
                        <span class="add-on"><i class="icon-calendar"></i></span>
                    </div>
                    <script type="text/javascript">$(".form_datetime").datetimepicker({});</script>
                </td>
            </tr> 
            <tr>
               <td><p>评论内容：</p></td><td><input type ="text" name="txtcontent" value="<%=rs.getString("content") %>"></td>
            </tr>
                </table>    
	
    </td>
  </tr>		
	<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" name="Submit" value="确认更新" class="button" />　
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>	
  </table>
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