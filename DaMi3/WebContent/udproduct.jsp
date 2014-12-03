<%@ page language="java"  pageEncoding="utf-8"%>  
 <%@ taglib prefix="s" uri="/struts-tags" %>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
 <html>  
   <head>  
    
       
     <title>商品添加</title>  
     <meta http-equiv="pragma" content="no-cache">  
     <meta http-equiv="cache-control" content="no-cache">  
     <meta http-equiv="expires" content="0">      
     <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
     <meta http-equiv="description" content="This is my page">  
    
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">


function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('����ɹ���');
    document.getElementById("fom").action="xuqiumingxi.htm";
   document.getElementById("fom").submit();
}

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="p_updateProductmsg.action" method="post" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >商品信息修改页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>修改商品信息</legend>
					  <table border="0" cellpadding="3" cellspacing="1" style="width:100%">
					  
					  <tr>
					    <td nowrap align="right">商品序号:</td>
					    <td><span style="color:#FF0000"><s:property value="#fpid.psid"/></span></td>
						<td><input type="hidden" name="product.psid" value="<s:property value="#fpid.psid"/>" /></td>
					  </tr>
					  <tr>
					    <td nowrap align="right" width="13%">商品名称:</td>
					    <td width="41%">
	<input name="product.pname" class="text" style="width:154px" type="text" size="40" value="<s:property value="#fpid.pname"/>" /> </td>
					  </tr>
					    
					  <tr>
					    <td nowrap align="right">商品关联关键字:</td>
					    <td>
	<input name="product.pnameid" id="" class="text" style="width:154px" value="<s:property value="#fpid.pnameid"/>"/>&nbsp;*比如颜色/款式/尺码</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">关联名称:</td>
					    <td>
	<input name="product.pselect" id="" class="text" style="width:154px" value="<s:property value="#fpid.pselect"/>"/>&nbsp;*比如红色/绝版/大码</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">关联商品:</td>
					    <td>
	<input name="product.pxx" id="" class="text" style="width:154px" value="<s:property value="#fpid.pxx"/>"/>&nbsp;*商品编号输入</td>
					  </tr>
					  					  <tr>
					    <td nowrap align="right">商品适配:</td>
					    <td>
	<input name="product.phone.id" id="" class="text" style="width:154px" value="<s:property value="#fpid.phone.id"/>"/>
	   &nbsp;*0为大米1&nbsp;*1为大米2&nbsp;*2为大米1和大米2</td>
					  </tr>
					  					  <tr>
					    <td nowrap align="right">商品小简介:</td>
					    <td>
	<input name="product.pinfo" id="" class="text" style="width:154px" value="<s:property value="#fpid.pinfo"/>"/>&nbsp;*商品详细页介绍短语</td>
					  </tr>
					  					  <tr>
					    <td nowrap align="right">商品单价:</td>
					    <td>
	<input name="product.price" id="" class="text" style="width:154px" value="<s:property value="#fpid.price"/>"/>&nbsp;元</td>
					  </tr>
					  					  <tr>
					    <td nowrap align="right">适配的手机:</td>
					    <td>
	<input name="product.pmoblie" id="" class="text" style="width:154px" value="<s:property value="#fpid.pmoblie"/>"/></td>
					  </tr>
<tr>
					    <td nowrap align="right">商品状态:</td>
						
					    <td><select name="product.pstatus" >
		                             <option value="0">商品上架</option>
			                         <option value="1">商品下架</option>
                              </select>
                        </td>
					  </tr>
					   <tr>
					    <td nowrap align="right">商品分类:</td>
						
					    <td><select name="product.psort.id" >
					    <option  selected="selected" value="<s:property value="#fpid.psort.id"/>">
					        <s:property value="#fpid.psort.sort"/></option>
					    <s:iterator value="qsort" var="p">
                       <option value='<s:property value="#p.id"/>'><s:property value="#p.sort"/></option>   
                          </s:iterator>
                        </select>
                        </td>
					  </tr>
					  <tr>
					    <td nowrap align="right">商品主展示图:</td>
					    <td>
						<input name="product.pimg" id="" class="text" style="width:300px" value="<s:property value="#fpid.pimg"/>"/></td>
					  </tr>
					  <tr>
					    <td nowrap align="right">商品大图:</td>
					    <td>
	<input name="product.pimgbig" id="" class="text" style="width:300px" value="<s:property value="#fpid.pimgbig"/>"/></td>
					  </tr>
					  <strong>
					  <tr>
					    <td nowrap align="right">商品中等图:</td>
					    <td>
	<input name="product.pimgmiddle" id="" class="text" style="width:300px" value="<s:property value="#fpid.pimgmiddle"/>"/></td>
					  </tr></strong>
					  <tr>
					    <td nowrap align="right">商品小图:</td>
					    <td>
	<input name="product.pimgsmall" id="" class="text" style="width:300px" value="<s:property value="#fpid.pimgsmall"/>"/></td>
					  </tr>
					   <tr>
					    <td nowrap align="right">商品规格:</td>
					    <td><textarea name="product.pnorms" id="" class="text" style="width:354px; height:100px" >
						<s:property value="#fpid.pnorms"/></textarea>&nbsp;*支持HTML标签</td>
					  </tr>
					  	
					   <tr>
					    <td nowrap align="right">商品简介:</td>
					  <td><textarea name="product.pmessage" id="" class="text" style="width:354px; height:100px; " >
					  <s:property value="#fpid.pmessage"/></textarea>&nbsp;*支持HTML标签</td>
					  </tr>
 
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		<TR>
			<TD colspan="3" align="center" height="50px">
			<input type="submit" name="Submit" value="保存" class="button"/>　
			<input type="button" name="Submit2" value="返回" class="button" onClick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
