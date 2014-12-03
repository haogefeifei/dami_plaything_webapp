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
		     url:"select_finds?indent.info=2",
		     type:"post",
		     data:{"page.pagenow":n},
		     success:function(data){
		    	
		    	 $("#yan~tr").remove();
		    	 $.each(data,function(){
                 $("#yan").after("<tr><td>"+this.id+"</td><td>"+this.totalprices+"</td><td>"
                 +this.addressname+"</td><td>"+this.addressadd+"</td><td>"+this.zipcode+"</td><td>"+this.telnumber+"</td><td>"+this.time+"</td>"
                 +"<td>"+this.info+"</td></tr>");		    		   
		    		   
		    	   });

		    	 
		     } 	
	      });
	 $("#page tr").remove();
	 $.ajax({
	     url:"indent_showPages?indent.info=2",
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
<body >
<center>
<form name="form1" method="post">
	<table border="0" style="text-align:center;">
		<tr style="background-color:#66CCFF">
			<td colspan="9"><font size="4" >订单信息列表</font></td>
		</tr>
		<tr id="yan" style="background-color:#66CCFF;">
			<td>编号</td>
			<td>总价</td>
			<td>姓名</td>
			<td>地址</td>
			<td>邮编</td>
			<td>电话</td>
			<td>成交时间</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
	</table><br/><br/>
	<table id="page"></table>
</form>
</center>
</body>
</html>