<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="img/dingdan2_files/base0000.css" />
<link href="img/login/logo.ico" rel="shortcut icon" />
<title>小米网 - 小米手机官网 官方论坛 小米手机及原装配件唯一在线销售渠道-选择在线支付方式</title>
		<meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。" />
		<meta name="keywords" content="小米手机,智能手机,android,小米公司" />
            </head>
    <body>

                    <div class="reg" id="regArea">
						<jsp:include page="UesrInfo.jsp"/>
                    </div>
                        <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="小米手机官网" href="index.jsp">大米手机官网</a></h1>
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
            <link href="img/dingdan2_files/shopping.css" type="text/css" rel="stylesheet"/>

<!--S 99Click 统计传值-->
<input type="hidden" id="orderid99" value="1120421483479056" />
<input type="hidden" id="price99" value="69.00" />
<!--E 99Click 统计传值-->
<div class="payOnline">
	<div class="shopCarbag">
		<ul class="shopCarNav shopCarNav3">
			<li class="item1" title="第一步 购物车结算"><span class="hidden">第一步 购物车结算</span></li>
			<li class="item2" title="第二步 填写订单信息"><span class="hidden">第二步 填写订单信息</span></li>
			<li class="item3" title="第三步 支付/确定订单"><span class="hidden">第三步 支付/确定订单</span></li>
		</ul>
	</div>
    
  
    
	<ul class="payOnline_Tips">
		<li class="payOnline_Tips_con">
			订单：<strong><s:property value="#session.indent.id" /></strong>
			<span><font color='red'></font></span>
		</li>
		<li class="payOnline_Tips_side">
			金额：<strong><s:property value="#session.indent.totalprices" />元</strong>
		</li>
	</ul>
	<div class="payOnline_Box">
                                                                               <div class="payAddress">
                                        <div><p style="text-align:left;"><span style="font-family:微软雅黑;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#19B8F3;">温馨提示：</span><span style="font-family:微软雅黑;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#999999;">订单生成后请在48小时内支付，合约机订单请在1小时内支付，否则订单会被系统取消。</span></p></div></div>
                                        
                                        
          <div class="payAddress">
			<ul>
				<li style="width:300px;padding-right:80px;">
                    					<h3>收货人信息</h3>
					<p><s:property value="#session.indent.addressname" /></p>
					<p>
                      </p>
                    				</li>
                				<li style="width:250px;">
					<h3>送货时间</h3>
					<p>
                    不限</p>
				</li>
                
				<li style="width:250px;">
					<h3>发票信息</h3>
					<p>不开发票</p>
				</li>
                			</ul>
		</div>
		<!-- payAddress -->
        
        
		<h2>请输入密码确认：</h2>
		
		<form name="form2" action="indent"  method="post">
		<h3>
		  <label for="textfield"></label>
		  <input type="password" name="password" maxlength="15" /> 
		</h3>
		
        		<p class="payOnline_btn">    
				<input type="submit" value="" title="点击确认" />
				</p>
        </form> 

		
        	</div>
</div>
<div id="payOnline_boxyBg" class="payOnline_boxyBg"></div>
<div class="payOnline_boxy" id="payOnline_boxy">
    <p class="payOnline_boxy_tit">
		<a onclick="closeBoxy();return false;" title="关闭" href=""><span class="hidden">关闭</span></a>
	</p>
    <h3>正在支付。。。</h3>
    <ul>
        <li>付款成功后请查看<a href="#" target="_blank">订单状态</a></li>
        <li>付款失败请参考<a href="#" target="_blank">支付帮助</a>，或咨询大米服务热线：400-100-5678</li>
    </ul>
</div>


 <div class="promise">
                <ul>
                    <li class="pr1"><a href="#">7天退货保障</a></li>
                    <li class="pr2"><a href="#">15天换货承诺</a></li>
                    <li class="pr3"><a href="#">200元起在线支付包邮</a></li>
                    <li class="pr4"><a href="#">230余家售后服务点</a></li>
                </ul>
            </div>
            <div id="footer">
                <div class="nav cfl">
                    <dl class="onlineservice cfl">
                        <dt>在线客服</dt>
                        <dd><a href="#">客服大厅</a></dd>
                        <dd><a href="#">购物流程</a></dd>
                        <dd><a href="#">关于发票</a></dd>
                        <dd><a href="#">快递送货</a></dd>
                        <dd><a href="#">上门自提</a></dd>
                        <dd><a href="#">签收须知</a></dd>
                    </dl>
                    <dl class="weibo">
                        <dt>微博客服</dt>
                        <dd><a href="#" target="_blank">新浪微博@大米公司</a></dd>
                        <dd><a href="#" target="_blank">腾讯微博@大米</a></dd>
                    </dl>
                    <dl class="xmhome">
                        <dt>大米之家</dt>
                        <dd><a href="#">13家大米之家查询</a></dd>
                        <dd><a href="#">230家维修商网点查询</a></dd>
                    </dl>
                    <dl class="xmphone">
                        <dt>400-100-5678</dt>
                        <dd>电话客服&nbsp;(仅收市话费)</dd>
                        <dd>周一至周日9:00-18:00</dd>
                    </dl>
                </div>
            </div>
            <div class="copyright">
                <p>&COPY;2012 <a href="http://order.xiaomi.com/" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="http://www.xiaomi.com/about" >关于小米</a><a href="http://www.xiaomi.com/about/jobs">小米招聘</a><a href="http://www.xiaomi.com/about/contact">联系我们</a>
                    <span>小米公司旗下网站：</span><a href="http://order.xiaomi.com/" class="xiaomi_lnk">小米网</a><a class="miui_lnk" href="http://www.miui.com/" target="_blank">MIUI</a><a class="miliao_lnk" href="http://www.miliao.com/" target="_blank">米聊</a></p>
            </div>
		</div><!-- page -->
		<script type="text/javascript" src="img/dingdan2_files/unamecoo.js"></script>
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
    </body>
</html>

<!-- This document saved from http://order.xiaomi.com/buy/confirm/1120421483479056 -->
