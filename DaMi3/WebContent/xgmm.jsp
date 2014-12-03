<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" SYSTEM "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>

<script type="text/javascript" src="img/xgmm_files/jquery00.js"></script>
<title>大米账号 - Chgpass User</title>
<meta name="keywords" content="小米账号">
<meta name="description" content="小米账号">
<link href="img/login/logo.ico" rel="shortcut icon" />
<link type="text/css" href="img/xgmm_files/login000.css" rel="stylesheet">
<script type="text/javascript" src="img/xgmm_files/miui_Ema.js"></script>


	</head>
    
    <script type="text/javascript">
            function f()
            {
            	var password=window.document.getElementById("t1").value;
		        var password1=window.document.getElementById("t2").value;
            	
		      
		        if( password=="" || password1=="")
            	{
            		
		        	window.alert("密码不能为空!");
            		return false;
            	}
            	else if(password!=password1)
            	{
            		window.alert("两次密码不一样!");
            		return false;
            	}
            	else 
    		    {
    			return true;
				}
            	
            }
   
	</script>
<body>
  <div class="topIcon clearfix">
    <span class="float_left"></span>
    <span class="float_right"></span>
  </div>
  <div class="logWrap logWrapIcon">
      <h1><a href="http://passport.xiaomi.com/" title="小米账号"><span class="hidden">小米账号</span></a></h1>
      <div class="logBg">
         <div class="logBox clearfix">
           <div class="reg1Tit">
             <h2 title="修改密码" class="pw3Tit"><span class="hidden">修改密码</span></h2>
           </div>
             <p class="pw3Infor">你好！请重新设置你的登录密码。</p>
          <ul class="reg1Con">
               <dt>新密码规则：</dt>
               <dd>8-16位（且不能使用单纯字母或单纯数字的密码）</dd>
               <dd>* 建议使用字母+数字+大小写+特殊字符混合密码的方式</dd>
               <dd></dd>
              
          </ul>
<form name="form1" method="post" action="alter" onsubmit="return f()">           <ul class="reg1Con">
            <!-- <li>
               <label for>原密码：</label><input size="32" maxlength="32" class="logInt" name="User[oldpassword]" id="User_oldpassword" type="password"><span></span>
               <div style class="errorMessage" id="User_oldpassword_em_"></div>
             </li> -->
             <li>
               <label for>新密码：</label><input size="32" maxlength="32" class="logInt" name="password" id="t1" type="password"><span></span>
                            </li>
             <li>
               <label for>确认密码：</label><input size="32" maxlength="32" class="logInt" name="password1" id="t2" type="password">                            </li>
           </ul>
           <p class="pw01Btn"><input class="logBtn" type="submit" name="yt0" value="确认修改"></p>
           </form>         </div>
      </div>
      <div class="logBot"></div>
  </div>

<div class="logFooter">
大米科技旗下产品：
<a href="#" target="_blank">大米手机</a> <span>｜</span>
<a href="#" target="_blank">MIUI</a> <span>｜</span>
<a href="#" target="_blank">米聊</a> <span>｜</span>
<a href="#" target="_blank">大米论坛</a><br>
Copyright ©2012 京ICP备10046444
</div>
<div style="display: none">
<script src="img/xgmm_files/stat0000.htm" type="text/javascript"></script>
</div>

    </body>
</html>
<!-- This document saved from http://passport.xiaomi.com/user/chgpass/uuid/27270386 -->
