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
<script type="text/javascript" src="jquery-1.7.1.js"></script>
<script type="text/javascript">
function f(){
	var key = "";
	var obj = $("[type=checkbox]:checked");
	var id = $("#hhh").val();
	if(obj.length>0){
		if(confirm("确认您的选择吗？")){
			for ( var i = 0; i < obj.length; i++) {
				key=key+obj[i].value;
			}
			if(key==1||key==2||key==3||key==4||key==5||key==123||key==45||key==12||key==345||key==12345){
				window.location.href="admin_update?quanxian="+key+"&admin.masterid="+id;		
				return true;
			}else{
				alert("若选多项，只有前两项，后三项或者前三项，后两项或者全选。");
				return false;
			}
			
		}else{
			return false;
		}		
	}else{
		alert("您没有选择该用户的权限！！！");
	}
}

function ff(){
	var a = $("#hid").val();
	if(a==1){
		$("[name=quanxian1]").attr("checked",true);
	}
	else if(a==2){
		$("[name=quanxian2]").attr("checked",true);
	}
	else if(a==3){
		$("[name=quanxian3]").attr("checked",true);
	}
	else if(a==4){
		$("[name=quanxian4]").attr("checked",true);
	}
	else if(a==5){
		$("[name=quanxian5]").attr("checked",true);
	}
	else if(a==12){
		$("[name=quanxian1]").attr("checked",true);
		$("[name=quanxian2]").attr("checked",true);
	}
	else if(a==345){
		$("[name=quanxian3]").attr("checked",true);
		$("[name=quanxian4]").attr("checked",true);
		$("[name=quanxian5]").attr("checked",true);
	}
	else if(a==123){
		$("[name=quanxian1]").attr("checked",true);
		$("[name=quanxian2]").attr("checked",true);
		$("[name=quanxian3]").attr("checked",true);
	}
	else if(a==45){
		$("[name=quanxian4]").attr("checked",true);
		$("[name=quanxian5]").attr("checked",true);
	}
	else if(a==12345){
		$("[name=quanxian1]").attr("checked",true);
		$("[name=quanxian2]").attr("checked",true);
		$("[name=quanxian3]").attr("checked",true);
		$("[name=quanxian4]").attr("checked",true);
		$("[name=quanxian5]").attr("checked",true);
	}
}
</script>
<body onload="ff()">
<table width="100%">
<tr>
	<td align="center">
		<font size="4"><b>权限设置列表</b></font>
	</td>
</tr>
</table>


<form name="fom" id="fom" method="post" action="">

<table width="778" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#A36107" class="mxfont01">

  <tr>
    <td height="40" align="center" bgcolor="#FFFFFF"><div align="center">管理员名单</div></td>
    <td bgcolor="#FFFFFF"><div align="center">功能列表显示</div></td>
  </tr>

  <tr>
    <td height="40" rowspan="2" align="center" bgcolor="#FFFFFF">
      <s:iterator value="#session.adminselect" var="it">
    <div align="center"><a href="admin_selectid?masterid=<s:property value="#it.masterid"/>">
    <s:property value="#it.mastername"/></a></div>
      </s:iterator>    </td>
    <td bgcolor="#FFFFFF">
     <div align="center"><strong><s:property value="#session.adminids.mastername"/>的权限</strong></div></br>
     <input type="hidden" id="hid" value="<s:property value="#session.adminids.adminkey"/>"/>
     <input type="hidden" id="hhh" value="<s:property value="#session.adminids.masterid"/>"/>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="center">
      <input type="checkbox" name="quanxian1" value="1"/>
      商品管理</br>
  <input type="checkbox" name="quanxian2" value="2"/>
      订单管理</br>
  <input type="checkbox" name="quanxian3" value="3"/>
      客户系统</br>
  <input type="checkbox" name="quanxian4" value="4"/>
      系统管理</br>
  <input type="checkbox" name="quanxian5" value="5"/>
      系统帮助</br>
    </div></td>
  </tr>

  <tr>
    <td colspan="5" align="center" bgcolor="#FFFFFF">
    	<input type="button" name="sub" value="保 存" onclick="f()"/></td>
  </tr>
</table>
</form>
</body>
</html>