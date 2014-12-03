<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 6px;
	margin-top: 6px;
	margin-right: 6px;
	margin-bottom: 6px;
	background-image: url();
}
html { overflow-x: ; overflow-y: ; border:0;} 
-->
</style>
</head>

<body >
<s:action name="admin_select"></s:action>
<table width="100%">
<tr>
	<td align="center">
		<font size="4"><b>权限设置列表</b></font>
	</td>
</tr>
</table>


<form name="fom" id="fom" method="post" action="" onSubmit="">

<table width="778" border="2" align="center" cellpadding="3" cellspacing="1" class="mxfont01">

  <tr>
    <td height="40" align="center" bgcolor="#FFFFFF"><div align="center">管理员名单</div></td>
    <td align="center" valign="middle" bgcolor="#FFFFFF"><div style="width:100%" align="center">功能列表显示</div></td>
  </tr>

  <tr>
    <td height="40" align="center" bgcolor="#FFFFFF"><div align="center">
     <s:iterator value="#session.adminselect" var="it"> 
    	<a href="admin_selectid?masterid=<s:property value="#it.masterid"/>"><s:property value="#it.mastername"/></a></br>
      </s:iterator>
    </div></td>
    <td colspan="100" align="center" valign="middle" bgcolor="#FFFFFF">
    	<div align="center">点击左边的人员，设置其权限</div>
	</td>
  </tr>
</table>
</form>
</body>
</html>