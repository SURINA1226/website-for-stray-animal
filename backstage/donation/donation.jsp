<%-- 
    Document   : message
    Created on : 2020-6-24, 14:45:12
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page import=" java.sql.* "%>
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>

</SCRIPT>

<body>
 <% 
    //取查询的名字
    request.setCharacterEncoding("utf-8");
    String selectName = request.getParameter("txtSelect");
%>
<form name="fom" id="fom" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
			  <td width="519"><label>帖子编号查询:
                                      
			  </label>
			     <input type="text" name="txtSelect" value="<%=selectName==null?"":selectName%>">
                            <input type="submit" name="btnSelect" value="开始查询">
			    </td>
			   <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
                     <td height="20" >
                
                         <button><a href="add.jsp ">添加捐款明细信息</a></button>
		           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	              </td>
          </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户详细列表 &nbsp;</td>
                    </tr>
                  <tr>
                    <td width="8%" align="center" bgcolor="#EEEEEE"></td>
                    <td width="12%" height="20" align="center" bgcolor="#EEEEEE">捐款明细编号</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">帖子编号</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">花费金额</td>
                    <td width="14%" align="center" bgcolor="#EEEEEE">花费用途</td>
                    <td width="28%" align="center" bgcolor="#EEEEEE">剩余金额</td>
                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                        <%    
                    //连接数据库的五大参数
                       DbConn dbconn = new DbConn();
                    String table = "donation"; 
                    String sql = "select * from "+table;
                    PreparedStatement ps ;
                    ResultSet rs;
                     //ResultSet rs = dbconn.exeQuery(sql);   
                    if(selectName == null){
                        //判断查询文本框里面是否有内容，如果没有则执行查询全部信息
                         //ps = dbconn.getstate(sql);
                         rs=dbconn.exeQuery(sql);
                    }else{
                        //如果有，则根据文本框的里面的内容在数据库根据姓名查询
                         ps =dbconn.getstate("select * from donation where postid like ?");
                        ps.setString(1,'%'+selectName+'%');
                        rs = ps.executeQuery(); 
                    }
                    int i = 1;  
                    while( rs.next()){
                %>
                  <tr>
                    <td bgcolor="#FFFFFF"><%out.print(i++);%></td>
                    <td height="20" bgcolor="#FFFFFF"><%=rs.getString("donateid") %></td>
                    <td bgcolor="#FFFFFF"><%=rs.getString("postid") %></td>
                    <td bgcolor="#FFFFFF"><%=rs.getString("money") %></td>
                    <td bgcolor="#FFFFFF"><%=rs.getString("purpose") %></td>
                    <td bgcolor="#FFFFFF"><%=rs.getString("residue") %></td>
                    <td bgcolor="#FFFFFF">
                        <a href="edit.jsp?id=<%=rs.getString("donateid")%> ">编辑</a> 
                        <a href="delete_action.jsp?id=<%=rs.getString("donateid")%>">删除</a>
                    </td>		
                  </tr>
                    
                   <%
                        }
                    %> 
                </table>
                 <h1 align="center">共计<%=i-1%>条记录</h1>
                <% 
                    rs.close();
                %>
                </td>
              </tr>
            </table></td>
        </tr>
      </table>
     </td>
  </tr>
</table>
</form>
</body>
</html>
