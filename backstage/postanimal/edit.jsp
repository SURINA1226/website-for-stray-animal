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
   String id = request.getParameter("postid");
    DbConn dbconn = new DbConn();
    String sql = "select * from postanimal where postid = ?";
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
              <td> <input type="hidden" name="txtid" value="<%=rs.getString("postid") %>"></td>
            </tr>

                <tr>
                  <td nowrap align="right" width="13%">动物名字:</td>
                  <td width="41%"><input name="txtname" class="text" style="width:154px" type="text" size="40" value="<%=rs.getString("name") %>" />
              <span class="red"> *</span></td>
                  <td align="right" width="19%">品种:</td>
                  <td width="27%"><input name="txtbreed" id="Input22" class="text" style="width:154px" value="<%=rs.getString("breed") %>" /></td>
                  </tr>
                  <tr>
                      <td align="right" width="19%">上传时间:</td>
                            <td width="27%">
                                 <div class="input-append date form_datetime">
                                    <input name="txttime" size="20" type="text" value="<%=rs.getString("time") %>" readonly/>
                                    <span class="add-on"><i class="icon-remove"></i></span>
                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                </div>
                                <script type="text/javascript">$(".form_datetime").datetimepicker({});</script>
                            </td>
                            <td nowrap align="right" width="13%">帖子标题:</td>
                            <td width="41%"><input name="txttitle" class="text" style="width:154px" type="text" size="40" value="<%=rs.getString("title") %>" />
                            </td>
                            
                            </tr>
                <tr>
                  <td nowrap align="right">年龄:</td>
                  <td><input name="txtage"  class="text" style="width:154px" value="<%=rs.getString("age") %>" /></td>
                  <td align="right">性格:</td>
                  <td><input name="txtcharacter" class="text" style="width:154px" value="<%=rs.getString("character1") %>" /></td>
                </tr>
                 <tr>
                  <td nowrap align="right">性别:</td>
                  <td><select name="txtsex" style="width:154px" value="<%=rs.getString("sex") %>" >

<option>男</option>
<option>女</option>
</select></td>
                  <td align="right">健康情况:</td>
                  <td><select name="txthealth"  style="width:154px" value="<%=rs.getString("health") %>">

<option>非常健康</option>
<option>一般健康</option>
<option>不健康</option>
</select></td>
                </tr>

                <tr>
                                      <td nowrap align="right" height="120px">照片上传:</td>
                                      <td>	 

                                                 <input type="file" name="file0" id="file0" multiple="multiple" value="<%=rs.getString("picture") %>" /><br>  
                                                 <img id="img0" style="width: 10rem;height: 10rem;" src="../../<%=rs.getString("picture") %>"/>

                                              <script>   
                                              $("#file0").change(function(){  
                                                               var objUrl = getObjectURL(this.files[0]) ;//获取文件信息  
                                                               console.log("objUrl = "+objUrl);  
                                                                if (objUrl) {  
                                                                $("#img0").attr("src", objUrl);  
                                                               }   
                                              }) ;  
                                              function getObjectURL(file) {  
                                                               var url = null;   
                                                               if (window.createObjectURL!=undefined) {  
                                                                url = window.createObjectURL(file) ;  
                                                               } else if (window.URL!=undefined) { // mozilla(firefox)  
                                                                url = window.URL.createObjectURL(file) ;  
                                                               } else if (window.webkitURL!=undefined) { // webkit or chrome  
                                                                url = window.webkitURL.createObjectURL(file) ;  
                                                               }  
                                                               return url ;  
                                                              }  
                                              </script> 

                                      </td>

                                </tr>
                <tr>
                          <td nowrap align="right" height="120px">猫咪来历:</td>
                          <td colspan="3"><textarea id="textarea" name="textarea" rows="3" cols="80" value=""><%=rs.getString("history") %></textarea></td>

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