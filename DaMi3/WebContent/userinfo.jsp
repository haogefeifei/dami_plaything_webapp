<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>

<title>大米账户</title>
<link href="img/login/logo.ico" rel="shortcut icon" />
  <link href="img/userinfo/index000.css" rel="stylesheet" type="text/css">
	 <script src="img/userinfo/jquery-1.8.0.min.js"></script>
  <script type="text/javascript">
$(function() {  
	
	
           ClearErrorInfo();  
                   $("#loginSubmit").click(function() {  
                     ClearErrorInfo();  
                     var flag=true;  
                     //var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((/.[a-zA-Z0-9_-]{2,3}){1,2})$/;  
          if($.trim($("#memberid").val())==""){  
              $("#memberIdError").html("<font color='red'>！</font>");  
              flag=false;  
                      }  
          
          
                       
          if($.trim($("#gender").val())==""){  
              $("#genderError").html("<font color='red'>！</font>");  
              flag=false;  
                      }  
        
                   return flag;  
         });      
   			
		
			
		
				   
		//清空输入框后面的提示	   
    	function ClearErrorInfo(){  
             $("#memberIdError").html("");  
             $("#userNameError").html("");  
             $("#passError").html("");  
             $("#passError2").html("");  
             $("#genderError").html("");  
             $("#emailError").html("");  
             $("#birthdayError").html("");  
    }  
                    
});  
</script>
</head>
<body>
<div class="top">
	<div class="logo">
		<a href="https://account.xiaomi.com/"><img src="img/userinfo/mclogo00.png" alt="小米logo"></a>
	</div>
</div>
<form action="info" method="post" >
<div class="suc_content">
  <div class="suc_kuang nojsp">
    <div class="hei_513">
      <p class="info">
        <span class="left">资料完善</span><span class="right"><s:property value="#session.user.username" /> | <a href="#">退出</a>
</span>
      </p>
      <div class="detail">
      <div class="user_info clearfix">
	<div class="photo">
	  <img src="img/userinfo/photo000.jpg"><!--<a href="#" id="chghead">更改头像</a>-->
	</div>
   
	<table class="mess">
	  <tr>
	    <td class="td_l">大米ID：</td>
	    <td><s:property value="#session.user.userid" />
              
	    </td>
	  </tr>
	  <tr>
	    <td class="td_l">昵称：</td>
	    <td class="rel_t"> <input type="text" name="userinfo.usernickname" value="" id="memberid" style=" width:80px;"/>
	     <span id="memberIdError"></span>
          <span class="p_pop">
	        <span class="doubt">
            </span> 
			<span class="pop"> 
            
	          <span class="lit_tip"></span> 
	          <span class="td_lht">您在小米和MIUI论坛等地方的昵称</span>
		</span>
	      </span>
	    </td>
	  </tr>
       <tr>
	    <td class="td_l">性别：</td>
	    <td>
             <input type="radio" name="userinfo.sex" id="gender" checked="checked" value="男" />男&nbsp;&nbsp;<input type="radio" name="userinfo.sex" id="gender" value="女" />女
	   	<span id="genderError"></span>
        <span class="p_pop"> 
              <span class="doubt">
              </span> 
	      <span class="pop">
          
                <span class="lit_tip"></span> 
	        <span class="td_lht">您的个人资料</span>
	      </span>
	    </span>
          </td>
        </tr>
	  <tr>
	    <td class="td_l">邮箱：</td>
	    <td>
             <s:property value="#session.user.username" />
		  
		      <a href="https://account.xiaomi.com/pass/bindAddress?userId=83639566&amp;type=EM&amp;replace=true&amp;address=739822714@qq.com">更改</a>
		    
	        	    
	    <span class="p_pop"> 
              <span class="doubt"></span> 
	      <span class="pop">
                <span class="lit_tip"></span> 
	        <span class="td_lht">您可以通过绑定邮箱来找回账户密码<br>以及可以用来登录账户</span>
	      </span>
	    </span>
          </td>
        </tr>
	<tr>
	  <td class="td_l">手机：</td>
	  <td>
        （未绑定）
	    <a href="https://account.xiaomi.com/pass/bindAddress?userId=83639566&amp;type=PH&amp;replace=false&amp;address=">绑定</a>
	      
	   
          <span class="p_pop"> 
            <span class="doubt"></span> 
	    <span class="pop">
              <span class="lit_tip"></span> 
              <span class="td_lht">您可以通过绑定手机来找回账户密码。<br>以及可以用来登录账户</span>
	    </span>
	  </span>
	</td>
      </tr>
      
      <tr>
	<td class="td_l">密码：</td>
	<td><a href="https://account.xiaomi.com/pass/changePassword?userId=83639566" class="mar_no">更改</a> 
	  <span class="p_pop">
            <span class="doubt"></span> 
	    <span class="pop">
	      <span class="lit_tip"></span>
              <span class="td_lht">您可以更改登录密码</span>
	    </span>
	   </span>
	 </td>
       </tr>
       
     </table>
   </div>
   <div class="servie clearfix">
     <p class="serve_title">可用操作</p>
     <ul class="sub_links">
		<li><input type="submit" id="loginSubmit" style="BORDER-RIGHT: #FF7E00 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #FF7E00 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#cecfde); BORDER-LEFT: #FF7E00 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #FF7E00 1px solid; height:40px; width:100px;" value="保存" /></li>
		<li><input type="reset" id="loginSubmit" style="BORDER-RIGHT: #FF7E00 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #FF7E00 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#cecfde); BORDER-LEFT: #FF7E00 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #FF7E00 1px solid; height:40px; width:100px;" value="重置" /></li>
	
      </ul>
    </div>
  </div>
</div>
<div class="suc_botm"></div>
</div>
</div>
</form>
<br>
</body>
</html>

<!-- This document saved from https://account.xiaomi.com/pass/userInfo?userId=83639566 -->
