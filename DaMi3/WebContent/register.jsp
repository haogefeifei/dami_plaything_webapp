<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>
<meta charset="UTF-8">
<title>大米账户 - 注册</title>
<link href="img/register/index000.css" rel="stylesheet" type="text/css">
<link href="img/login/logo.ico" rel="shortcut icon" />
<script src="img/register/jquery-1.js"></script>
<script src="img/register/form0000.js"></script>

<script type="text/javascript">     
$(function () {  
    //点击图片更换验证码
    $("#Verify").click(function(){
        $(this).attr("src","SecurityCodeImageAction?timestamp="+new Date().getTime());
    });
	//使用AJAX验证用户是否已存在
    $("#emailInp").bind("blur",function(){
  	  
  	 $.post("checking", { id:$("#emailInp").val()},  
                   function (data){ 
  						if($("#emailInp").val()!=""){
  		 					
  							if(data==1){  
  							
  								$('#emailCode3').show();
                        		$('#emailCode2').hide();
  								
  							}
  		 				
                        	if(data==0){  
                        	
                        		$('#emailCode2').show();
                        		$('#emailCode3').hide();
								
                        	}
                       	}  
                         
             }, "json"); 
 		
    });      
});

</script>  
</head>
<body>
<div class="top">
	<div class="logo">
		<a href="https://account.xiaomi.com/"><img src="img/register/mclogo00.png" alt="小米logo"></a>
	</div>
</div>

<div class="suc_content">
  <div class="suc_kuang nojsp">
    <div class="hei_513">
      <h4 class="h4_suc">注册大米账户</h4>
      <p class="suc_p">大米账户能使用大米手机、米聊、MIUI和大米的其他服务。如果您已拥有大米账户，则可<a href="login.jsp" class="cor_yellow">在此登录</a></p>
      <div class="radio_quyu">
        <input type="radio" name="registerMethod" class="Mradio" id="tab1" clickfor="#regByEmail" checked="checked"><label for="tab1" hidefocus="true">用电子邮箱注册</label>
        <input type="radio" name="registerMethod" class="marl_40 Mradio" id="tab2" clickfor="#regByPhone"><label for="tab2" hidefocus="true">用手机号码注册</label>
      </div>
      
      <form method="post" action="register" id="regByEmail">
	    <input type="hidden" name="passToken" id="passToken" value>
        <table class="login_ta">
          <tr>
            <td class="td1">邮箱：</td>
            <td>
              <input type="text" name="u.username" id="emailInp" class="input_kuang val_m item errortip address" value isrequired="true" rule="^[\w.\-]+@(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,3}$" autocomplete="off">
              <span class="check_tips error_tip" id="emailCode">邮箱格式错误</span>
              <span class="check_tips empty_tip">请输入邮箱</span>
              <span class="check_tips error_tip" id="emailCode2">邮箱已被注册，请更换邮箱，或<a href='/pass/forgetPassword' class='cor_yellow'>取回密码</a></span>
            	 <span class="check_tips succ_tips" id="emailCode3"></span>
            </td>
          </tr>
          <tr>
            <td class="td1">设置密码：</td>
            <td>
              <div class="td2" id="pwdTd">
                <input type="password" class="input_kuang item val_m errortip password" isrequired="true" id="pwd" name="u.userpsw" autocomplete="off">
                <span class="check_tips error_tip" id="tips_val"></span>
                <span class="check_tips empty_tip">请输入新密码</span>
                <span class="prompt_info" id="pos_email">密码长度为6~16位字符，由数字、字母和字符组成</span>
                <span class="prompt_info" id="pos_email2" style="display:none;">密码输入上限为16个字符</span>
                <span class="check_tips succ_tips"></span>
                <span class="tips_1">密码长度为6~16位</span>
                <span class="tips_2">密码不能全为字母</span>
                <span class="tips_3">密码不能全为数字</span>
							</div>
            </td>
          </tr>
          <tr>
            <td class="td1">确认密码：</td>
            <td><input type="password" class="input_kuang val_m item errortip" name="repassword" isrequired="true" repeat="#pwd" autocomplete="off">
            <span class="check_tips repeat_tip">密码输入不一致</span>
            <span class="check_tips empty_tip">请输入确认密码</span><span class="check_tips succ_tips"></span></td>
          </tr>
          <tr>
            <td class="td1">验证码：</td>
            <td>
              <input id="imginput" type="text" class="input_kuang val_m item errortip checkcode" name="fromcode" isrequired="true" autocomplete="off">
              <img src="SecurityCodeImageAction" id="Verify"  style="cursor:hand;" alt="看不清，换一张"/>
	      <span class="checkcode_span">点击图片刷新验证码<br><i class="code_error"></i></span>
	    </td>
          </tr>
          <tr class="la_height">
            <td class="td1">&nbsp;</td>
            <td>
              <input type="hidden" name="callback" value>
              <div class="sub_login flt_l"><input type="submit" class="no_bg" value="立即注册"></div>
            </td>
          </tr>
        </table>
      </form><!-- email end -->
      
      <form method="post" action="https://account.xiaomi.com/pass/register" id="regByPhone">
	<input type="hidden" name="passToken" id="passToken" value>
        <table class="login_ta" style="display:none;">
          <tr>
            <td class="td1">手机号码：</td>
            <td>
              <input type="text" class="input_kuang short item errortip address" name="phone" rule="(^1[3|4|5|8]\d{9}$)|(^\++\d{2,})" value isrequired="true" id="phoneNum" autocomplete="off">
              <a href="https://account.xiaomi.com/pass/sendRegisterTiket" class="mt_login val_m" id="sendRegister">获取验证码</a>
              <span class="check_tips error_tip" id="phoneCode">手机号码格式错误</span>
              <span class="check_tips empty_tip">请输入手机号码</span>
              <span class="check_tips succ_tips" ></span>
          </td>
        </tr>
        <tr>
          <td class="td1">验证码：</td>
          <td id="validate_td">
            <input type="text" class="input_kuang new_dinkuan errortip item val_m" name="ticket" id="ticket" isrequired="true" autocomplete="off">
            <span class="validate_info" id="ticket_phone">请输入手机收到的验证码。如果一段时间没有收到，请重新获取</span>
            <span class="check_tips error_tip">验证码错误</span>
            <span class="check_tips empty_tip">请输入验证码</span>
            <span class="check_tips succ_tips"></span>
          </td>
        </tr>
        <tr>
          <td class="td1">设置密码：</td>
          <td>
            <div class="td2" id="pwdTd2">
              <input type="password" class="input_kuang item val_m errortip password" isrequired="true" id="phone_pwd" name="password" autocomplete="off">
              <span class="check_tips empty_tip">请输入新密码</span>
              <span class="check_tips error_tip" id="tips_val_phone"></span>
              <span class="prompt_info" id="pos_phone">密码长度为6~16位字符，由数字、字母和字符组成</span>
              <span class="prompt_info" id="pos_phone2" style="display:none;">密码输入上限为16个字符</span>
              <span class="check_tips succ_tips"></span>
              <span class="tips_1">密码长度为6~16位</span>
              <span class="tips_2">密码不能全为字母</span>
              <span class="tips_3">密码不能全为数字</span>
	    </div>
          </td>
        </tr>
        <tr>
          <td class="td1">确认密码：</td>
          <td><input type="password" class="input_kuang val_m item errortip" name="repassword" isrequired="true" repeat="#phone_pwd" autocomplete="off">
              <span class="check_tips repeat_tip">密码输入不一致</span><span class="check_tips empty_tip">请输入确认密码</span><span class="check_tips succ_tips"></span></td>
        </tr>
        <tr class="la_height">
          <td class="td1"></td>
          <td>
            <input type="hidden" name="callback" value>
            <div class="sub_login flt_l"><input type="submit" class="no_bg" value="立即注册"></div>
          </td>
        </tr>
      </table>
    </form><!-- phone end -->
    <p class="p_cor_hui">点击“立即注册”，即表示您同意并愿意遵守小米<a href="http://product.xiaomi.com/policy/eula.html" class="cor_yellow" target="_blank">用户协议</a>和<a href="http://product.xiaomi.com/policy/privacy.html" class="cor_yellow" target="_blank">隐私政策</a></p>
  </div>
  <div class="suc_botm"></div><!--这部分是卷角效果-->
</div>
</div>
<div class="footer">
  <ul class="links">
    <li><a href="" target="_blank">大米手机</a></li>
    <li><a href="" target="_blank">MIUI</a></li>
    <li><a href="" target="_blank">米聊</a></li>
    <li><a href="" target="_blank">大米论坛</a></li>
    <li class="copyright"><span>小米公司版权所有-京ICP备10046444</span></li>
  </ul>
</div>


<script>
;(function(){
	// 这个是cookie部分。
	var pt = document.getElementById("passToken");
	var c = document.cookie.split(";");
	var p = ""; 
	for(var i = 0 ; i < c.length ; i++){
	  if(c[i].indexOf("passToken") > -1){
	    p = c[i].substring(c[i].indexOf("=")+1) ; 
	    break ; 
	  }  
	}
	pt.value = p ; 

	//这个是执行from.js部分
	$("#regByEmail").validate(true);
	$("#regByEmail").setConfig("emptyClass","emptyForm");

	$("#regByPhone").validate(true);
	$("#regByPhone").setConfig("emptyClass","emptyForm");
	$('#bindAddress').setConfig("customVaild",function(){
	  if($.trim( $("#phoneNum").val() ).indexOf("+86") > -1){
	   var thisValue=$.trim( $("#phoneNum").val() );
	   $("#phoneNum").val( thisValue.replace("+86","") );
	  }
	  return true;
	});

	//这个是选择表单部分
	$(".Mradio").bind("click",function(){
	    var clickFor = $(this).attr("clickFor");
	    $(".login_ta").hide();
	    $( clickFor + " table").show();
	  });
	  
	  $("#tab1").click();
	  
	//这个是密码验证部分
	$('#pwd').bind("focus",function(){
	  $('#pos_email2').show();
	  $('#pos_email').hide();
	  setMyClass( $('#pwdTd'), '');
	}).bind("blur",function(){
	    $('#pos_email2').hide();
	    var val = $(this).val() ;
	    if( !/.{6,16}/.test( val ) || val.length == 0 || val.length > 16 ){
	      setMyClass( $(this), 'error');
	      $("#tips_val").html( $(".tips_1").html() );
	    }else if( /^[A-Za-z]+$/.test(val) ){
	      setMyClass( $(this), 'error');
	      $("#tips_val").html( $(".tips_2").html() );
	    }else if( /^\d+$/.test(val) ){
	      setMyClass( $(this), 'error');
	      $("#tips_val").html( $(".tips_3").html() );
	    }else{
	      setMyClass( $(this), 'succ');
	    }
	});

	$('#phone_pwd').bind("focus",function(){
	  $('#pos_phone2').show();
	  $('#pos_phone').hide();
	  setMyClass( $('#pwdTd2'), '');
	}).bind("blur",function(){
	    $('#pos_phone2').hide();
	    var val = $(this).val() ;
	    if( !/.{6,16}/.test( val ) || val.length == 0 || val.length > 16 ){
	      setMyClass( $(this), 'error');
	      $("#tips_val_phone").html($(".tips_1").html());
	    }else if( /^[A-Za-z]+$/.test(val) ){
	       setMyClass( $(this), 'error');
	       $("#tips_val_phone").html($(".tips_2").html());
	    }else if( /^\d+$/.test(val) ){
	       setMyClass( $(this), 'error');
	       $("#tips_val_phone").html($(".tips_3").html());
	    }else{
	       setMyClass( $(this), 'succ');
	    }
	});
	  /*$('.password').bind("afterValidate",function(){
	    $('.prompt_info').hide();
	  }).bind("afterValidateFailed",function(){
	    $('.prompt_info').show();
	  });*/
	function checkBind( type , address , cb ){
	  $.ajax({
	    url:'/pass/user@id',
	    dataType:'json',
	    type:'GET',
	    data:{
	      externalId:address ,
	      type:type
	    },
	    success:function( data ){
	      cb( data );
	    }
	  });
	}
	var tag = { PH:0 , EM:0 }
	  $(".address").bind( "afterValidate", function(){
	    var me = $(this);
	    var id = $(this).attr("id") ;
	    var type = id == "emailInp" ? 'EM' : 'PH' ;
	    var stamp = new Date().getTime();
	    tag[ type ] =  stamp;
	    checkBind( type , $(this).val() , function( data ){
	      if( stamp == tag[ type ] ){
		if( data.code == 0 ){
		  if( data.data.userId > 0 ){
		    if( type == 'PH' ){
	              var phoneCodeObj = $("#phoneCode");
	              phoneCodeObj.html("号码已被注册，请更换号码，或<a href='/pass/forgetPassword' class='cor_yellow'>取回密码</a>")
	              setMyClass( phoneCodeObj, 'error');
	            }else{
	              var emailCode = $("#emailCode");
	              emailCode.html("邮箱已被注册，请更换邮箱，或<a href='/pass/forgetPassword' class='cor_yellow'>取回密码</a>");
	              setMyClass( emailCode, 'error');
	            }
	          }
	        }
	      }
	    });
	  });

	$("#sendRegister").bind('click',function(){
	    /*请求前先验证号码*/
	    var me = $(this);
	    var myAttr = me.attr('disabled');
	    if(!!myAttr){return false};
	    var phoneNum  = $("#phoneNum");
	    function getValue(){
	      var phone=$.trim( phoneNum.val() );
	      if(phone.slice(0,3) === '+86'){
	        phone = phone.replace("+86","") ;
	      }
	      return phone;
	    }
	    var phoneValue = getValue(); 
	    var phoneRule = new RegExp(phoneNum.attr("rule"));
	    var url = me.attr("href");
	    if (!phoneRule.test(phoneValue)){
	       $("#phoneCode").html("请输入正确的手机号码");
	       setMyClass( phoneNum, 'error');
	       return false;
	    }else{
	       $.ajax({
	        url:"/pass/sendPhoneTicket",
	        dataType:'json',
	        type:'POST',
	        data:{
	          phone:phoneValue
	        },
	        success:function( data ){
	          if (data.code==0){
	             me.attr("disabled","true");
	             me.time=60;
	            ;(function(){
	              if (me.time>1){
	                me.time--;
	                me.html("再次获取("+me.time+")");
	                setTimeout(arguments.callee,1000);
	              }else{
	                me.html("获取验证码");
	                me.removeAttr("disabled");
	              }
	            })();
	            /*禁用发送60秒*/
	         }else if(data.code=="25001"){
	             me.attr("disabled","true");
	             me.time=5;/*禁用5秒*/
	            ;(function(){
	              if (me.time>1){
	                me.time--;
	                //me.html("再次获取("+me.time+")");
	                setTimeout(arguments.callee,1000);
	              }else{
	                me.html("获取验证码");
	                me.removeAttr("disabled");
	              }
	            })();
	            //$("#phoneNum").val("");
	            $("#phoneCode").html("号码已被注册，请更换号码，或<a href='/pass/forgetPassword' class='cor_yellow'>取回密码</a>");
	            setMyClass( $("#phoneCode"), 'error');
	          }
	        }
	      }); 
	      return false;
	    }
	  });
	$("#ticket").bind("focus",function(){
	    $("#ticket_phone").show();
	    setMyClass( $("#ticket"), '');
	  });
	  $("#ticket").bind("blur",function(){
	    $("#ticket_phone").hide();
	     var val_t = $(this).val();
	     if(val_t==""){return false;}
	     var phoneNum  = $("#phoneNum");
	     function getValue(){
	      var phone=$.trim( phoneNum.val() );
	      if(phone.slice(0,3) === '+86'){
	        phone = phone.replace("+86","") ;
	      }
	      return phone;
	    }
	    var phoneValue = getValue();
	    $.ajax({
	        url:"/pass/verifyPhoneRegTicket",
	        dataType:'json',
	        type:'GET',
	        data:{
	          phone:phoneValue,
	          ticket:val_t
	        },
	        success:function( data ){
	          if ( data.code > 0 ){
	            setMyClass( $("#ticket"), 'error');
	            return false;
	          }else{
	           setMyClass( $("#ticket"), 'succ');
	          }
	        }
	     });
	  });

	function setMyClass(obj, current, empty, error, repeat, succ){
	        empty = empty || "empty";
	        error = error || "error";
	        repeat = repeat || "repeat";
	        succ = succ || "succ";
	        obj.parent().removeClass( empty ).removeClass( error ).removeClass( repeat ).removeClass( succ ).addClass(current);
	}

	var imgerror="";
	if(imgerror){
	  $('#imginput').parent().addClass('imgerror');
	}
	$('#imginput').bind('focus',function(){
	  $(this).parent().removeClass('imgerror');
	});

	$("#phoneNum").change(function(){
	  $("#ticket").val("");
	  $("#ticket").parent().removeClass("succ").removeClass("empty").removeClass("error");
	});
	})();
</script>
</body>
</html>

<!-- This document saved from https://account.xiaomi.com/pass/register -->
