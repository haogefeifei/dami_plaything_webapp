<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>商品信息列表</title>
<style type="text/css">

</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />

<link href="../css/style.css" rel="stylesheet" type="text/css" />
<SCRIPT type=text/javascript src="../js/jquery-1.4.2.js"></SCRIPT>
</head>
<SCRIPT >
</SCRIPT>

<body>
<form name="fom" id="fom" method="post" action="findPlist">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="../images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看商品:
<input name="pname" type="text" size="12"/>
<input name="submit" type="submit" class="right-button02" value="搜索" /></td>
			   	
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
	              <input name="Submit2" type="button" class="right-button08" value="添加商品" onclick="location.href='showAdd'"/></td>
	           <td><br/></td>
          	 </tr>
 
              <tr>
                <td height="40" class="font42">
				<table id="yan" width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">商品详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE" id="yan">
				    <td width="4%" align="center" height="30"></td>
                    <td width="5%">商品ID</td>
					<td width="10%">商品名</td>
                    <td width="5%">商品类型</td>
                    <td width="5%">价格</td>
					<td width="5%">商品小简介</td>
					<td width="5%">商品状态</td>
					<td width="5%">操作</td>
					<td width="5%">操作</td>
                  </tr>
                 <s:iterator value="ps"  var="p">
                  <tr bgcolor='#EEEEEE'>
                  <td height='20'width='100' height='50'>
                  <a class="mimg" target="_blank" href="http://127.0.0.1:8080/DaMi3/showinfo?productid=<s:property value="#p.psid" />">
                  <img width="40" height="40" src="<s:property value="#p.pimg" />"></a></td>
                  <td width='100' height='50'><s:property value="#p.psid" /></td>
                  <td width='200'height='50'><s:property value="#p.pname" /></td>
                  <td width='100' height='50'><s:property value="#p.psort.sort" /></td>
                  <td width='100' height='50'><s:property value="#p.price" />元</td>
                  <td width='100' height='50'><s:property value="#p.pinfo" /></td>
                  <td width='100'height='50'>
                  	<s:if test="#p.pstatus==0">在售中</s:if>
   					<s:if test="#p.pstatus==1">已下架</s:if>
                  </td>
                  <td width='100' height='50'>
                  	<s:if test="#p.pstatus==0"><a href='' onclick="">商品下架</a></s:if>
   					<s:if test="#p.pstatus==1"><a href=''>商品上架</a></s:if>
                  </td>
                  <td width='100' height='50'><a href=''>修改商品</a></td>
                  </tr>      
                  </s:iterator>                      
            </table></td>
        </tr>
      </table>
      <table id="page" width="95%" border="0" align="center" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
       
          </table>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
