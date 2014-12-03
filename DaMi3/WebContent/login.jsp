<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="img/login_files/shopping.css" />
<link rel="stylesheet" type="text/css" href="img/login_files/base0000.css" />
<script type="text/javascript" src="img/login_files/jquery00.js"></script>
<script type="text/javascript" src="img/login_files/jquery01.js"></script>
<title>大米网 - 大米手机官网 官方论坛 大米手机及原装配件唯一在线销售渠道-登录大米通行证</title>
		<meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。" />
		<meta name="keywords" content="小米手机,智能手机,android,小米公司" />
            </head>
    <body>
                    <div class="reg" id="regArea"> 
						<jsp:include page="UesrInfo.jsp"/>
                    </div>
                        <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="小米手机官网" href="">小米手机官网</a></h1>
                <div class="menu">
                    <ul id="mainMenu_top">
                        <li class="m1"><a class="T_home  " href="index.jsp"><span>首页</span></a></li>
                        <li class="m2"><a class="T_mione " href="DaMiInfo.jsp"><span>小米手机</span></a></li>
                        <li class="m3"><a class="T_accessories " href="peijian"><span>原装配件</span></a></li>
                        <li class="m4"><a class="T_download " href="xiazai.jsp"  ><span>下载专区</span></a></li>
                        <li class="m5"><a class="T_service " href="#"  ><span>服务支持</span></a></li>
                        <li class="m6"><a class="T_forum" href="#" target="_blank"><span>用户论坛</span></a></li>
                        <li class="m7"><a class="T_miui" href="http://www.miui.com/" target="_blank"><span>MIUI</span></a></li>
                        <li class="m8"><a class="T_miliao" href="http://www.miliao.com/" target="_blank"><span>米聊</span></a></li>
                    </ul>			
                </div>
            </div>
            <!-- header -->
            <div class="container">
	<div id="content">
		<div class="xmLogin cfl">
<div class="xmLogin_form">
<h2>欢迎登录大米</h2>
<form id="login-form" action="login" method="post">
		<ul class="xmBox_login">
			<li class="cfl">
				<label for="LoginForm_username" class="required">帐&nbsp;&nbsp;号 <span class="required">*</span></label><input name="user.username" id="LoginForm_username" type="text" /><div id="LoginForm_username_em_" class="errorMessage" style="display:none"></div>			</li>
			<li class="xmBox_login_psw cfl">
				<label for="LoginForm_password" class="required">密&nbsp;&nbsp;码 <span class="required">*</span></label><input name="user.userpsw" id="LoginForm_password" type="password" /><div id="LoginForm_password_em_" class="errorMessage" style="display:none"></div>			</li>
		</ul>
		<div class="row rememberMe">
								</div>
		<div class="xmBox_login_Btn">
			<input class="T_loginBtn" type="submit" name="yt0" value="         "/><a href="#">忘记密码？</a>
		</div>
		<p class="xmBox_login_reginTips">
			你还不是大米用户？<a target="_blank" href="register.jsp">立刻免费注册</a> 
		</p>
</form></div><!-- form -->
</div>
<script>
var checkValue=function(sObj,sValue){
		var obj,dtxt;
		obj =$("#"+sObj);
		dtxt = sValue;
		if(obj.val()==dtxt){
			obj.css({"color":"#ccc"});
		}
		obj.focus(function(){
			if($(this).val() == dtxt){
				$(this).val("");
				$(this).css({"color":"#333"});
			}
		}).blur(function(){
			if($(this).val() == dtxt || $(this).val() == ''){
				$(this).val(dtxt);
				$(this).css({"color":"#ccc"});
			}
		})
	}
$(function(){
	checkValue("LoginForm_username","Email/米聊号");
})
</script>
	</div><!-- content -->
</div>
            <div class="promise">
                <ul>
                    <li class="pr1"><a href="http://www.xiaomi.com/service/exchange">7天退货保障</a></li>
                    <li class="pr2"><a href="http://www.xiaomi.com/service/exchange">15天换货承诺</a></li>
                    <li class="pr3"><a href="http://www.xiaomi.com/service/transfer">200元起在线支付包邮</a></li>
                    <li class="pr4"><a href="http://www.xiaomi.com/service/poststation">330余家售后服务点</a></li>
                </ul>
            </div>
            <div id="footer">
                <div class="nav cfl">
                    <dl class="onlineservice cfl">
                        <dt>在线客服</dt>
                        <dd><a href="http://www.xiaomi.com/service" target="_blank">客服大厅</a></dd>
                        <dd><a href="http://bbs.xiaomi.com/article-4302-1.html" target="_blank">购物流程</a></dd>
                        <dd><a href="http://bbs.xiaomi.com/article-4312-1.html" target="_blank">关于发票</a></dd>
                        <dd><a href="http://bbs.xiaomi.com/article-4314-1.html" target="_blank">快递送货</a></dd>
                        <dd><a href="http://bbs.xiaomi.com/article-4316-1.html" target="_blank">上门自提</a></dd>
                        <dd><a href="http://bbs.xiaomi.com/article-4318-1.html" target="_blank">签收须知</a></dd>
                    </dl>
                    <dl class="weibo">
                        <dt>微博客服</dt>
                        <dd><a href="http://weibo.com/xiaomikeji/" target="_blank">新浪微博@大米公司</a></dd>
                        <dd><a href="http://t.qq.com/xiaomikeji/" target="_blank">腾讯微博@大米</a></dd>
                    </dl>
                    <dl class="xmhome">
                        <dt>大米之家</dt>
                        <dd><a href="http://www.xiaomi.com/service/xiaomiclub">25家大米之家查询</a></dd>
                        <dd><a href="http://www.xiaomi.com/service/poststation">333家维修商网点查询</a></dd>
                    </dl>
                    <dl class="xmphone">
                        <dt>400-100-5678</dt>
                        <dd>电话客服&nbsp;(仅收市话费)</dd>
                        <dd>周一至周日9:00-18:00</dd>
                    </dl>
                </div>
            </div>
            <div class="copyright">
                <p>&COPY;2012 <a href="http://order.xiaomi.com/" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="http://www.xiaomi.com/about" >关于大米</a><a href="http://www.xiaomi.com/about/jobs">大米招聘</a><a href="http://www.xiaomi.com/about/contact">联系我们</a>
                    <span>大米公司旗下网站：</span><a href="http://order.xiaomi.com/" class="xiaomi_lnk">大米网</a><a class="miui_lnk" href="http://www.miui.com/" target="_blank">MIUI</a><a class="miliao_lnk" href="http://www.miliao.com/" target="_blank">米聊</a></p>
            </div>	
		</div><!-- page -->
		<script type="text/javascript" src="img/login_files/unamecoo.js"></script>
		<script>var goodsNum=getCookie('xm_user_www_num');if(goodsNum==null){goodsNum=0}if('http://www.xiaomi.com'.indexOf(window.location.host)>=0&&miid){var html='<ul class="cfl"><li class="regArea_l"><span class="user">'+username+'</span><a class="T_logout" href="http://order.xiaomi.com/site/logout">退出</a><a class="T_order" href="http://order.xiaomi.com/user/order">我的订单</a></li><a class="cart T_cart" href="http://order.xiaomi.com/cart">购物车<span id="goodsNum"></span></a></li><li class="regArea_r"><a style="color:#F60;" href="http://www.xiaomi.com/service" target="_blank" class="reg_done">必看，购买小米手机的常见问题</a></ul>';_getid("regArea").className='reg';_getid("regArea").innerHTML=html}if(_getid("goodsNum")){if(goodsNum>=1){_getid("goodsNum").className="highlight"};_getid("goodsNum").innerHTML="\n("+goodsNum+")"}</script>
                <script type="text/javascript">
                    var _gaq = _gaq || [];
                    _gaq.push(['_setAccount', 'UA-24946561-1']);
                    _gaq.push(['_setDomainName', 'xiaomi.com']);
                    _gaq.push(['_trackPageview']);
                    (function() {
                        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                    })();
                </script>
    <script type="text/javascript">
/*<![CDATA[*/
jQuery(function($) {
$('#login-form').yiiactiveform({'validateOnSubmit':true,'attributes':[{'id':'LoginForm_username','inputID':'LoginForm_username','errorID':'LoginForm_username_em_','model':'LoginForm','name':'username','enableAjaxValidation':false,'clientValidation':function(value, messages, attribute) {

if($.trim(value)=='') {
	messages.push("\u5e10&nbsp;&nbsp;\u53f7 \u4e0d\u53ef\u4e3a\u7a7a\u767d.");
}

}},{'id':'LoginForm_password','inputID':'LoginForm_password','errorID':'LoginForm_password_em_','model':'LoginForm','name':'password','enableAjaxValidation':false,'clientValidation':function(value, messages, attribute) {

if($.trim(value)=='') {
	messages.push("\u5bc6&nbsp;&nbsp;\u7801 \u4e0d\u53ef\u4e3a\u7a7a\u767d.");
}

}}]});
});
/*]]>*/
</script>
</body>
</html>

<!-- This document saved from http://order.xiaomi.com/site/login -->
