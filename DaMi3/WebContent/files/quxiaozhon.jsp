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
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.6.2.min.js" ></script>
<script type="text/JavaScript">
showlist(1);
function s(a){
	var text = a;
	if(confirm("你确定要继续吗？？？")===true){
		location.href="delivergoods?oid="+text;
	}
}
function showlist(n)
{
	 if(n<1)
		 {
		   alert("已经是第一页了");
		   return;
		 }
	 var page=$("#countpage").val();
	  if(n>page)
		  {
		    alert("已经是最后一页了");
		    return;
		  }
	 $.ajax({
		     url:"select_finds?indent.info=4",
		     type:"post",
		     data:{"page.pagenow":n},
		     success:function(data){
		    	 $("#yan~tr").remove();
		    	 $.each(data,function(){
                $("#yan").after("<tr><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.id+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
                +this.totalprices+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.addressname+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
                +this.addressadd+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.zipcode+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
                +this.telnumber+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.time+"</span></div></td>"+"<td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19' id='tds'><div align='center'><span class='STYLE10'>"+this.info+"</span></div></td>"
                +"<td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'><a onclick='s("+this.id+")'>发货</a>"
                +"</span></div></td></tr>");
                if(this.info == 0){
                  	 $("#tds").html("未发货");
                   }
                   if(this.info == 1){
                  	 $("#tds").html("已发货");
                   }
                   if(this.info == 2){
                  	 $("#tds").html("已付款");
                   }
                   if(this.info == 3){
                  	 $("#tds").html("取消中");
                   }
                   if(this.info == 4){
                  	 $("#tds").html("已关闭");
                   }
                
		     }); 
		     } 	
	      });
	 $("#page tr").remove();
	 $.ajax({
	     url:"select_showPages?indent.info=4",
	     type:"post",
	     data:{"page.pagenow":n},
	     success:function(data){
	    	 
            $("#page").append("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick='showlist("+data.pagenow+"-1)'>上一页</a></td>"
            +"<td>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick='showlist("+data.pagenow+"+1)'>下一页</a></td><td>&nbsp;&nbsp;&nbsp;&nbsp;当前页:"+data.pagenow+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;显示"
            +data.pagesize+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type='hidden' id='countpage' value='"+data.pageCount+"'>共:"+data.pageCount+"页</td><td>&nbsp;&nbsp;&nbsp;&nbsp;总记录数:"+data.rowsize+"</td></tr>");		    		    
	     } 	
     });
}

$(function(){
	$("#select").click(function(){
		if($("#select1").val() == ""){
			alert("请输入订单号！！！");
			return showlist();
		}
		/* alert($("#select1").val());
		var text = $("#select1").val();
		alert("++++++++++++++++++++++="); */
		$.ajax({
			url:"cha_findss",
			type:"POST",
			data:{"indent.info":4,"indent.totalprices":$("#select1").val()},
			success:function(data){
				$("#page tr").remove();
				$("#yan~tr").remove();
		    	 $.each(data,function(){
               $("#yan").after("<tr><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.id+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
               +this.totalprices+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.addressname+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
               +this.addressadd+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.zipcode+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"
               +this.telnumber+"</span></div></td><td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'>"+this.time+"</span></div></td>"+"<td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19' id='tds'><div align='center'><span class='STYLE10'>"+this.info+"</span></div></td>"
               +"<td width='8%' height='20' bgcolor='#FFFFFF' class='STYLE19'><div align='center'><span class='STYLE10'><a href='delivergoods?oid="+this.id+"'>发货</a>"
               +"</span></div></td></tr>");
               if(this.info == 1){
              	 $("#tds").html("未发货");
               }
               if(this.info == 2){
              	 $("#tds").html("已发货");
               }
               if(this.info == 3){
              	 $("#tds").html("已付款");
               }
               if(this.info == 4){
              	 $("#tds").html("取消中");
               }
               if(this.info == 5){
              	 $("#tds").html("已关闭");
               }
               
               });  
			}
		});
	});
});
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

-->
</style>
<script>

function ask() {
	
	var id = "";
	var obj = $(".checkn:checked");
	if (obj.length > 0) {

		if (confirm("你确认要删除吗?")) {
			for ( var i = 0; i < obj.length; i++) {
				id = id + obj[i].value + ",";
		}
			
			location.href = "in_delete?ids="+id+"";
			
			return true;
	} 	else {
			return false;
	}
} else {
	alert("您还没选择要删除的信息！");
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
                <td width="94%" valign="bottom"><span class="STYLE1">客户订单管理</span><span style="margin-left:90px;">请输入订单号：<input type="text" id="select1"/><input id="select" type="button" value="查找"/></span></td>
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
      <tr id="yan">
	      <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订单号</span></div></td>         
	      <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订单人</span></div></td>        
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">收货人</span></div></td>         
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">邮编</span></div></td>
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">地址</span></div></td>
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">电话</span></div></td>
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订货时间</span></div></td>
          <td width="5%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">订单详情</span></div></td>
          <td width="13%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作</span></div></td>
      </tr>
</table>
<table id="page"></table>
</body>
</html>