<%-- 
    Document   : changepassword
    Created on : 2020-6-26, 10:20:47
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="text.bean.DbConn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />
</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
  <form action="update.jsp"  >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改密码</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		
			
                    <fieldset style="height:100%;">
                    <legend>修改密码</legend>
                              <table border="0" cellpadding="2" cellspacing="1" style="width:100%">


                              <tr>
                                <td nowrap align="right" width="11%">管理员账号：</td>
                                <td width="27%"><input name='txtid' type="txt" class="text" style="width:154px" value="" /></td>

                                <td align="right" width="25%">&nbsp;</td>
                                <td width="37%">&nbsp;</td>
                                </tr>
                              <tr>
                                <td width="11%" align="right" nowrap>新的密码：</td>
                                <td colspan="3"><input name='txtpassword' type="text" class="text" style="width:154px;" size="20" value="" />
                                 </td>
                                </tr>
                             <tr>
                                <td width="11%" align="right" nowrap>重复新的密码：</td>
                                <td colspan="3"><input name='txtpassword1' type="text" class="text" style="width:154px;" size="20" value="" />
                                 </td>
                                </tr>
                              </table>
              <br />
                    </fieldset>			

	 </td>
  </tr>
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" />　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
	
	
	
	


  </table>

</div>
</form>
</body>
</html>

