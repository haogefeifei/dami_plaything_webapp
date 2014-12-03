<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>
<meta charset="UTF-8">
<link href="img/login/logo.ico" rel="shortcut icon" />
<title>大米账户 - 激活账户</title>
<link href="img/register/index000.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
<div class="top">
	<div class="logo">
		<a href="https://account.xiaomi.com/"><img src="img/register/mclogo00.png" alt="小米logo"></a>
	</div>
</div>

<div class="suc_content">
    <div class="suc_kuang">
      <div class="hei_513 teln_m">
      
      
      <div class="title">还差一步，请激活您的账户</div>
      <div class="register">
        <div class="point_email">
        <p>系统已经发送了一封激活邮件到您的邮箱</p><p>请访问您的邮箱：<b><s:property value="#session.mail.username" /></b>，点击邮件中的链接便可激活您的账户</p>
        </div>
        <div class="other">
        <p>&nbsp;&nbsp;如果没有收到激活邮件：</p><p>• 也许邮件被您的邮箱误认为是垃圾邮件而放到垃圾箱中，请检查一下</p><p>• 或者，您可以<a id="sendMsg" class="action" href="javascript:void(0)">点此重新发送激活邮件</a></p>
        </div>
        </div>
      
    </div>
    <div class="suc_botm"></div>
    </div>
</div>
<div class="footer">
  <ul class="links">
    <li><a href="http://www.xiaomi.com/" target="_blank">小米手机</a></li>
    <li><a href="http://www.miui.com/" target="_blank">MIUI</a></li>
    <li><a href="http://www.miliao.com/" target="_blank">米聊</a></li>
    <li><a href="http://bbs.xiaomi.com/" target="_blank">小米论坛</a></li>
    <li class="copyright"><span>小米公司版权所有-京ICP备10046444</span></li>
  </ul>
</div>

<script src="img/register/jquery-1.js"></script>
<script>
var userId = '83639566';
var address = '739822714@qq.com';
var addressType = 'EM';
$("#sendMsg").bind('click',function(){
  var me = $(this);
  if(me.attr("disabled")){return false;}
  $.ajax({
  url:"/pass/ajax/sendActivateMessage",
  dataType:'json',
  type:'GET',
  data:{
    userId:userId,
    address:address,
    addressType:addressType
  },
  success:function( data ){
    if (data.code==0){
       me.attr("disabled","true");
       me.time=60;
      ;(function(){
        if (me.time>1){
          me.time--;
          me.html("&nbsp;发送成功！如未收到，("+me.time+")秒后可以再次尝试！");
          setTimeout(arguments.callee,1000);
        }else{
          me.html("点此重新发送激活邮件");
          me.removeAttr("disabled");
        }
      })();
    }else{
       me.attr("disabled","true");
       me.time=5;
      ;(function(){
        if (me.time>1){
          me.time--;
          me.html("&nbsp;发送失败，请再次获取("+me.time+")");
          setTimeout(arguments.callee,1000);
        }else{
          me.html("点此重新发送激活邮件");
          me.removeAttr("disabled");
        }
      })();
    }
  }
  });
});

</script>
</body>
</html>

<!-- This document saved from https://account.xiaomi.com/pass/register -->
