<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="js/jquery-1.6.2.min.js" ></script>
 <script type="text/javascript">
 showlist(1);
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
		     url:"dami_find",
		     type:"post",
		     data:{"page.pagenow":n},
		     success:function(data){
		    	
		    	 $("#yan~tr").remove();
		    	 $.each(data,function(){
                 $("#yan").after("<tr id='trs' onmouseover='trs()' onmouseout='tr1()'><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.userid+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.usernickname+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"
                 +this.username+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.usertel+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.usermail+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.usercode+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.usertime+"</td><td width='6%' height='20' bgcolor='d3eaef' class='STYLE6'><div align='center'><span class='STYLE10'>"+this.sex+"</td></tr>");		    		   
		    		   
		    	   });

		    	 
		     } 	
	      });
	 $("#page tr").remove();
	 $.ajax({
	     url:"dami_showPage",
	     type:"post",
	     data:{"page.pagenow":n},
	     success:function(data){
	    	 
             $("#page").append("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick='showlist("+data.pagenow+"-1)'>上一页</a></td>"
             +"<td>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick='showlist("+data.pagenow+"+1)'>下一页</a></td><td>&nbsp;&nbsp;&nbsp;&nbsp;当前页:"+data.pagenow+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;显示"
             +data.pagesize+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type='hidden' id='countpage' value='"+data.pageCount+"'>共:"+data.pageCount+"页</td><td>&nbsp;&nbsp;&nbsp;&nbsp;总记录数:"+data.rowsize+"</td></tr>");		    		    
	     } 	
      });
 }
 </script>   
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
<body >
<center>
<form name="form1" method="post">
	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onMouseOver="changeto()"  onmouseout="changeback()">

	<tr>
       
        <td  bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">客户信息</span></div></td>
	</tr>

      <tr id="yan">
       
        <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">编码</span></div></td>
         
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">用户姓名</span></div></td>
        
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">邮箱</span></div></td>
         
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">消费情况</span></div></td>
          <td width="6%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">编码</span></div></td>
         
        <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">用户姓名</span></div></td>
        
         <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">邮箱</span></div></td>
         
          <td width="9%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">消费情况</span></div></td>

      </tr>
	</table><br/><br/>
	<table id="page"></table>
</form>
</center>
</body>
</html>