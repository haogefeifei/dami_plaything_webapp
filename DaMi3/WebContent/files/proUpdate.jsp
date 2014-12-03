<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>商品修改页面</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />

<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
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
  <form action="p_Update" method="post" enctype="multipart/form-data" name="fom" id="fom" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >商品更新页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="更新" class="button" onclick="alert('����ɹ���');"/>
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>更新任务</legend>
					  <table border="0" cellpadding="3" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">商品名:</td>
					    <td width="41%"><input name="p.pname" class="text" style="width:154px" type="text" size="40" value="<s:property value='#session.info.pname'/>"/> </td>
				       
					    <td nowrap width="13%" align="center">品牌:</td>
					   <td ><input name="p.pinbai" class="text" style="width:154px" type="text" size="40" value="<s:property value='#session.info.pinbai'/>"/> </td>
					    <td nowrap width="13%">包装:</td>
					    <td ><input name="p.pack" class="text" style="width:154px" type="text" size="40" value="<s:property value='#session.info.pack'/>"/> </td>
					    </tr>
					    
					  <tr>
					    <td nowrap align="right">价格:</td>
					    <td><input name="p.price" id="" class="text" style="width:154px" value="<s:property value='#session.info.price'/>"/></td>
					    
					    <td align="center">数量:</td>
					    <td><input name="p.num" id="Input" class="text" style="width:154px" value="<s:property value='#session.info.num'/>"/></td>
					    <td align="right">销售数量:</td>
					    <td><input name="p.saleNum" id="Input" class="text" style="width:154px" value="<s:property value='#session.info.saleNum'/>"/></td>
					  </tr>
					   <tr>
					    <td nowrap align="right">商品类型:</td>
						
					    <td><select name="p.producttype.typeId" >
					    <s:iterator value="#typelist" var="p">
                          
                          <option value='<s:property value="#p.typeId"/>'><s:property value="#p.tpname"/></option>
                          </s:iterator>
                        </select>
                        </td>
                       
					    <td align="center" width="19%">材质:</td>
					    <td width="27%"><input name="p.ptype" id="Input22" class="text" style="width:154px" value="<s:property value='#session.info.ptype'/>" /></td>
					    <td align="right" width="19%">人气:</td>
					    <td width="27%"><input name="p.popular" id="Input22" class="text" style="width:154px" value="<s:property value='#session.info.popular'/>"/></td>
					  </tr>
					  <tr>
					    
					    <td><input name="p.pimg" id="" type="hidden" class="text" style="width:154px" type="text" size="40" value="<s:property value='#session.info.pimg'/>"/></td>
					    
					    
					    <td><input name="p.pimg1"  type="hidden"  class="text" style="width:154px" type="text" size="40" value="<s:property value='#session.info.pimg1'/>"/></td>
					   
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
			<input type="submit"  value="保存" class="button" />
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
