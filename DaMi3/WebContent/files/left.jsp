<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="../css/css.css" rel="stylesheet" type="text/css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.865171.cn</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" src="jquery-1.7.1.js"></script>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="../images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="../images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="../images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="../images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="../images/ico04.gif";
	}
}

</SCRIPT>
<body>
<s:if test="#session.admin.adminkey==12345">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showAdd" target="mainFrame" class="left-font03" onClick="tupian('20');">添加商品</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showPlist" target="mainFrame" class="left-font03" onClick="tupian('21');">商品信息查看</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->

		

		


        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >订单管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="orderlist" target="mainFrame" class="left-font03" onClick="tupian('7');">查看所有订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="weifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">查看未发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiqianshou.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已签收订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="quxiaozhon.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看取消中订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiguanbi.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已关闭订单</a></td>
				</tr>
				
      </table>
		<!--  项目系统结束    -->

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >客户系统</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listkehuxinxi.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">客户信息查看</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->

	  

	  <!-- 管理系统开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">系统管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="#" target="mainFrame" class="left-font03" onClick="tupian('13');">添加用户</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="addquanxian.jsp" target="mainFrame" class="left-font03" onClick="tupian('14');">添加角色</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="../tongji.jsp" target="mainFrame" class="left-font03" onClick="tupian('18');">销售统计</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->

		
     <!-- 系统帮助开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	 <!-- 系统帮助结束-->


	  </TD>
  </tr>
  
</table>
</s:if>
<!-- ============================================================ -->
<s:if test="#session.admin.adminkey==1">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showAdd" target="mainFrame" class="left-font03" onClick="tupian('20');">添加商品</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showPlist" target="mainFrame" class="left-font03" onClick="tupian('21');">商品信息查看</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->
	  </TD>
  </tr>
  
</table>
</s:if>

<!-- =============================================== -->
<s:if test="#session.admin.adminkey==2">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >订单管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="orderlist" target="mainFrame" class="left-font03" onClick="tupian('7');">查看所有订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="weifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">查看未发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiqianshou.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已签收订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="quxiaozhon.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看取消中订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiguanbi.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已关闭订单</a></td>
				</tr>
				
      </table>
		<!--  项目系统结束    -->
	  </TD>
  </tr>
  
</table>
</s:if>

<!-- =================================================== -->


<s:if test="#session.admin.adminkey==3">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >客户系统</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listkehuxinxi.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">客户信息查看</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->


	  </TD>
  </tr>
  
</table>
</s:if>

<!-- ===================================================== -->


<s:if test="#session.admin.adminkey==4">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>

	  

	  <!-- 管理系统开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">系统管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="reg.jsp" target="mainFrame" class="left-font03" onClick="tupian('13');">添加用户</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="addquanxian.jsp" target="mainFrame" class="left-font03" onClick="tupian('14');">添加角色</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="../tongji.jsp" target="mainFrame" class="left-font03" onClick="tupian('18');">销售统计</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->
	  </TD>
  </tr>
  
</table>
</s:if>


<!-- ================================================ -->


<s:if test="#session.admin.adminkey==5">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>	
     <!-- 系统帮助开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	 <!-- 系统帮助结束-->


	  </TD>
  </tr>
  
</table>
</s:if>

<!-- ================================================== -->

<s:if test="#session.admin.adminkey==12">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showAdd" target="mainFrame" class="left-font03" onClick="tupian('20');">添加商品</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showPlist" target="mainFrame" class="left-font03" onClick="tupian('21');">商品信息查看</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->

		

		


        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >订单管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="orderlist" target="mainFrame" class="left-font03" onClick="tupian('7');">查看所有订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="weifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">查看未发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiqianshou.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已签收订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="quxiaozhon.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看取消中订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiguanbi.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已关闭订单</a></td>
				</tr>
				
      </table>
		<!--  项目系统结束    -->
	  </TD>
  </tr>
  
</table>
</s:if>


<!-- ========================================================== -->

<s:if test="#session.admin.adminkey==345">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >客户系统</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listkehuxinxi.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">客户信息查看</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->

	  

	  <!-- 管理系统开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">系统管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="reg.jsp" target="mainFrame" class="left-font03" onClick="tupian('13');">添加用户</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="addquanxian.jsp" target="mainFrame" class="left-font03" onClick="tupian('14');">添加角色</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="../tongji.jsp" target="mainFrame" class="left-font03" onClick="tupian('18');">销售统计</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->

		
     <!-- 系统帮助开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	 <!-- 系统帮助结束-->


	  </TD>
  </tr>
  
</table>
</s:if>


<!-- =================================================== -->


<s:if test="#session.admin.adminkey==123">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showAdd" target="mainFrame" class="left-font03" onClick="tupian('20');">添加商品</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="showPlist" target="mainFrame" class="left-font03" onClick="tupian('21');">商品信息查看</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->

		

		


        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >订单管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="orderlist" target="mainFrame" class="left-font03" onClick="tupian('7');">查看所有订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="weifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">查看未发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yifaOrder.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已发货订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiqianshou.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已签收订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="quxiaozhon.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看取消中订单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="yiguanbi.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">查看已关闭订单</a></td>
				</tr>
				
      </table>
		<!--  项目系统结束    -->

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >客户系统</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listkehuxinxi.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">客户信息查看</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->


	  </TD>
  </tr>
  
</table>
</s:if>


<!-- ============================================= -->

<s:if test="#session.admin.adminkey==45">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<s:property value="#session.admin.mastername"/></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="adminexit" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>

	  

	  <!-- 管理系统开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">系统管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="reg.jsp" target="mainFrame" class="left-font03" onClick="tupian('13');">添加用户</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="addquanxian.jsp" target="mainFrame" class="left-font03" onClick="tupian('14');">添加角色</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="../tongji.jsp" target="mainFrame" class="left-font03" onClick="tupian('18');">销售统计</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->

		
     <!-- 系统帮助开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	 <!-- 系统帮助结束-->


	  </TD>
  </tr>
  
</table>
</s:if>
</body>
</html>