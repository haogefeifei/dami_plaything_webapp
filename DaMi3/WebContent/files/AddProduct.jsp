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
  <form action="adminaddproduct" method="post" enctype="multipart/form-data" name="fom" id="fom" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >商品添加页面</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>添加商品</legend>
					  <table border="0" cellpadding="3" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">商品名称:</td>
					    <td width="41%"><input name="newproduct.pname" class="text" style="width:154px" type="text" size="40" value="" /> </td>
					  </tr>
					    
					  <tr>
					    <td nowrap align="right">商品关联关键字:</td>
					    <td><input name="newproduct.pnameid" id="" class="text" style="width:154px" value="/"/>&nbsp;*比如颜色/款式/尺码</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">关联名称:</td>
					    <td><input name="newproduct.pselect" id="" class="text" style="width:154px" value="/"/>&nbsp;*比如红色/绝版/大码</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">关联商品:</td>
					    <td><input name="newproduct.pxx" id="" class="text" style="width:274px" value="/"/>&nbsp;*输入商品编号用“/”隔开(可暂时不填)</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">商品小简介:</td>
					    <td><input name="newproduct.pinfo" id="" class="text" style="width:154px" value=""/>&nbsp;*商品详细页介绍短语</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">商品单价:</td>
					    <td><input name="newproduct.price" id="" class="text" style="width:154px" value=""/>&nbsp;元</td>
					  </tr>
					   <tr>
					    <td nowrap align="right">商品分类:</td>
						
					    <td><select name="newproduct.psort.id" >
					    <option  selected="selected">--请选择--</option>
					    <s:iterator value="psort" var="p">
                          
                          <option value='<s:property value="#p.id"/>'><s:property value="#p.sort"/></option>
                          </s:iterator>
                        </select>
                        </td>
					  </tr>
					  <tr>
					    <td nowrap align="right">商品主展示图:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  
					  <tr>
					    <td nowrap align="right">商品图片1:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" />&nbsp;*至少有一张图片</td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片2:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片3:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片4:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片5:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片6:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  <tr>
					    <td nowrap align="right">商品图片7:</td>
					    <td><input name="upload"  type="file" class="text" style="width:154px" type="text" size="40" /></td>					   
					  </tr>
					  
					   <tr>
					    <td nowrap align="right">商品规格:</td>
					    <td><textarea name="newproduct.pnorms" id="" class="text" style="width:354px; height:100px" ></textarea>&nbsp;*支持HTML标签</td>
					  </tr>
					   <tr>
					    <td nowrap align="right">商品简介:</td>
					    <td><textarea name="newproduct.pmessage" id="" class="text" style="width:354px; height:100px" ></textarea>&nbsp;*支持HTML标签</td>
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
