<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="jquery-1.4.4.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />

<link href="../css/style.css" rel="stylesheet" type="text/css" />
<SCRIPT type=text/javascript src="../js/jquery-1.4.2.js"></SCRIPT>
</head>


<%@taglib uri="/struts-tags" prefix="s" %>

<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}

#red { color: red;}
-->
</style>
<script>

function ask() {
	
	var id = "";
	var obj = $(".checkn:checked");
	if (obj.length > 0) {

		if (confirm("确定要编辑该商品?")) {
			for ( var i = 0; i < obj.length; i++) {
				id = id + obj[i].value + ",";
		}
			
			location.href = "in_delete?ids="+id+"";
			
			return true;
	} 	else {
			return false;
	}
} else {
	alert("您还没选择编辑所需要商品！");
}
}

var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}


function updatez(psid){
	window.location.href="p_updateZero?product.psid="+psid;
}
function updateo(psid){
	window.location.href="p_updateOne?product.psid="+psid;
}
</script>


</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1">商品操作列表</span><span style="margin-left:90px;"><input name="" type="text" /><input name="" type="submit" value="查找商品"/></span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
              <input type="checkbox" name="checkbox11" id="checkbox11" />
              全选      &nbsp;&nbsp;<img src="images/add.gif" width="10" height="10" /> 添加   &nbsp; <img src="images/del.gif" width="10" height="10" /> 删除    &nbsp;&nbsp;<img src="images/edit.gif" width="10" height="10" /> 编辑   &nbsp;</span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">


      <tr>
        <td width="2%" height="6" bgcolor="d3eaef" class="STYLE10"><div align="center">
          <input type="checkbox" name="checkbox" id="checkbox" />
        </div></td>
        <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center">商品小图</div></td>
         
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品ID</span></div></td>
        
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品名</span></div></td>
         
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center">商品类型</div></td>
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">价格</span></div></td>
        
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品小简介</span></div></td>
         
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center">商品状态</div></td>
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作备注</span></div></td>
         
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center">操作</div></td>


      </tr>
     <s:iterator value="ps" var="p">
     
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" class="checkn" value='<s:property value="#p.psid"/>' name="checkbox2" id="checkbox2"/>
        </div></td>
   
     </div>
       
        <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><a class="mimg" target="_blank" href="http://127.0.0.1:8080/DaMi3/showinfo?productid=<s:property value="#p.psid" />">
                  <img width="40" height="40" src="<s:property value="#p.pimg" />"></a></div></td>
       
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#p.psid" /></div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#p.pname" /></div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#p.psort.sort" /></div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#p.price" />元</div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#p.pinfo" /></div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">
        		<s:if test="#p.pstatus==0">在售中</s:if>
   				<s:if test="#p.pstatus==1"><span id="red">已下架</span></s:if>
       </div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">
       		<s:if test="#p.pstatus==0"><input type="button" value="商品下架"  onClick="updateo(<s:property value='#p.psid'/>) "/></s:if>
   			<s:if test="#p.pstatus==1"><input type="button" value="商品上架"  onClick="updatez(<s:property value='#p.psid'/>) "/></s:if>
       </div></td>
       <td width="8%" height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">
       <a href="p_findProduct?product.psid=<s:property value="#p.psid"/>">修改商品</a></div></td>
       
       
      </tr>
      </s:iterator>
 <tr>
		         	 <td align="center" colspan="9">
			          共${pagebean.allNums }条,共${pagebean.allPages }页,当前第${pagebean.currentPage}页
			          <a href="findall_news.action?bean.currentPage=1">首页</a>
			          <a href="findall_news?bean.currentPage=${(pagebean.currentPage-1<=0)?1:(pagebean.currentPage-1)}">上一页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;第${pagebean.currentPage }页&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="findall_news?bean.currentPage=${(pagebean.currentPage+1>pagebean.allPages)?(pagebean.allPages):(pagebean.currentPage+1)}">下一页</a>
						<a href="findall_news?bean.currentPage=${pagebean.allPages}">尾页</a><br>
					</td>
				</tr>
</table>
</body>
</html>