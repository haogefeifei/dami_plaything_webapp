<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品信息列表</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
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
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="addrenwu.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body>
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="../images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看订单:
<input name="textfield" type="text" size="12" readonly="readonly"/>
<input name="Submit4" type="button" class="right-button02" value="搜索" /></td>
			   	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
	              
	              
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="14" align="center" style="font-size:16px">订单详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
                    <td width="5%">订单�?/td>
					<td width="5%">订单�?/td>
                    <td width="5%">总价�?/td>
					<td width="5%">收货�?/td>
					<td width="5%">邮编</td>
					<td width="5%">地址</td>
					<td width="5%">电话</td>
					<td width="5%">订货时间</td>
					<td width="5%">备注</td>
					<td width="5%">是否发货</td>
					<td width="5%">订单详情</td>
					<td width="5%">操作</td>
                  </tr>
                  <s:iterator value="#session.order" var="o">
                  
                  <tr bgcolor="#FFFFFF">
                    <td ><s:property value="#o.indent.id"/></td>
                    <td><s:property value="#o.indent.loginuser.usernickname"/></td>
                    <td><s:property value="#o.indent.totalprices"/>�?/td>
                    <td><s:property value="#o.indent.addressname"/></td>
                    <td><s:property value="#o.indent.zipcode"/></td>
                    <td><s:property value="#o.indent.addressadd"/></td>
                    <td><s:property value="#o.indent.telnumber"/></td>
                    <td><s:property value="#o.indent.time"/></td>
                    <td><s:property value=""/>�?/td>
                    <td>
                    	<s:if test="#o.indent.info==0">等待发货</s:if>
						<s:if test="#o.indent.info==1">已发�?/s:if>
						<s:if test="#o.indent.info==2">已收�?/s:if>
						<s:if test="#o.indent.info==3">取消�?/s:if>
						<s:if test="#o.indent.info==4">已关�?/s:if>
                    </td>
                    <td><a href="indentinfo2?indentid=<s:property value='#o.indent.id' />" class="agray">查看订单详情</a></td>
                    <td>
                    	<s:if test="#o.indent.info==0"><a href="delivergoods?oid=<s:property value='#o.indent.id' />">发货</a>|</s:if>
						<s:if test="#o.indent.info==1"><a href="sign?oid=<s:property value='#o.indent.id' />">签收</a>|</s:if>
						<s:if test="#o.indent.info==2">�?/s:if>
						<s:if test="#o.indent.info==3"><a href="off?oid=<s:property value='#o.indent.id' />">关闭订单</a>|</s:if>
						<s:if test="#o.indent.info!=4&&#o.indent.info!=2"><a href="off?oid=<s:property value='#o.indent.id' />">关闭</a></s:if>
                    	
					</td>
                  </tr>
				 </s:iterator>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">�?<span class="right-text09">1</span> �?| �?<span class="right-text09">1</span> �?/td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一�?/a> | <a href="#" class="right-font08">下一�?/a> | <a href="#" class="right-font08">末页</a>] 转至:</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
