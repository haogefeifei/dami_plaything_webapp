<%@ page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
    <head>
    <link href="img/login/logo.ico" rel="shortcut icon" />
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="img/peijian_files/accessor.css" />
<link rel="stylesheet" type="text/css" href="img/peijian_files/base0000.css" />
<script type="text/javascript" src="img/peijian_files/jquery00.js" ></script>
<script type="text/javascript" src="img/peijian_files/base0000.js" ></script>
<title>大米网 - 大米手机官网 官方论坛 大米手机及原装配件唯一在线销售渠道-大米手机官方原装配件</title>
		<meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。" />
		<meta name="keywords" content="小米手机,智能手机,android,小米公司" />
            </head>
    <body>
                     <div class="reg" id="regArea"> 
						<jsp:include page="UesrInfo.jsp"/>
                    </div>
                        <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="大米手机官网" href="index.jsp">大米手机官网</a></h1>
                <div class="menu">
                    <ul id="mainMenu_top">
                        <li class="m1"><a class="T_home  " href="index.jsp"><span>首页</span></a></li>
                        <li class="m2"><a class="T_mione " href="DaMiInfo.jsp"><span>小米手机</span></a></li>
                        <li class="m3"><a class="T_accessories on" href="peijian"><span>原装配件</span></a></li>
                        <li class="m4"><a class="T_download " href="xiazai.jsp"  ><span>下载专区</span></a></li>
                        <li class="m5"><a class="T_service " href="peijian.jsp"  ><span>服务支持</span></a></li>
                        <li class="m6"><a class="T_forum" href="" target="_blank"><span>用户论坛</span></a></li>
                        <li class="m7"><a class="T_miui" href="http://www.miui.com/" target="_blank"><span>MIUI</span></a></li>
                        <li class="m8"><a class="T_miliao" href="http://www.miliao.com/" target="_blank"><span>米聊</span></a></li>
                    </ul>			
                </div>
            </div>
            <!-- header -->
            <div class="accessories">
	<div class="aside">
		<div class="nav">
			<h3>全部分类</h3>
			<%-- ----------------------------------------------------------------------------------------------- --%>
			<ul>
			<li><a href="allpeijian">全部</a></li>
			<s:iterator value="psort"  var="pt">
                
				<li>
					<s:if test="pid==#pt.id"><b></s:if>
					<a href="psort?pid=${pt.id}"><s:text name="%{#pt.sort}"/></a>
					<s:if test="pid==#pt.id"></b></s:if>
				</li>
				
			</s:iterator>		
			</ul>
			<%-- ----------------------------------------------------------------------------------------------- --%>
		</div>
	</div>
	<!-- aside -->

	<div class="main">
		<div class="promo">
	<ul>
		<li class="p1"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000116" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B1', '0327-米兔单品页-http://www.xiaomi.com/goods/1120']);"><img src="img/peijian_files/xmAcce_1.jpg" /></a></li>
		<li class="p2"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000105" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B2', '0327-暗彩后盖（暗红）单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000105']);"><img src="img/peijian_files/xmAcce_2.jpg" /></a></li>
		<li class="p3"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000113" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B3', '0327-电池（玫红）单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000113']);"><img src="img/peijian_files/xmAcce_3.jpg" /></a></li>
		<li class="p4"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000109" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B4', '0327-耳机单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000109']);"><img src="img/peijian_files/xmAcce_4.jpg" /></a></li>
		<li class="p5"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000106" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B5', '0327-贴膜单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000106']);"><img src="img/peijian_files/xmAcce_5.jpg" /></a></li>
		<li class="p6"><a href="http://www.xiaomi.com/goods/1194" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B6', '0327-原色后盖套餐（3件套）单品页-http://www.xiaomi.com/goods/1194']);"><img src="img/peijian_files/xmAcce_6.jpg" /></a></li>
		<li class="p7"><a href="http://www.xiaomi.com/goods/1169" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B7', '0327-舞龙吉祥后盖（白）单品页-http://www.xiaomi.com/goods/1169']);"><img src="img/peijian_files/xmAcce_7.jpg" /></a></li>
		<li class="p8"><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000111" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B8', '0327-冰激凌挂绳单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000111']);"><img src="img/peijian_files/xmAcce_8.jpg" /></a></li>
		<li class="p9"><a href="http://www.xiaomi.com/goods/1012" target="_blank" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'B9', '0327-保护套（橘红）单品页-http://www.xiaomi.com/goods/1012']);"><img src="img/peijian_files/xmAcce_9.jpg" /></a></li>
	</ul>
	<div class="xmFocus_main">
		<div id="slides">
			<ul class="slides_container">
				<li><a href="http://127.0.0.1:8080/DaMi3/showinfo?productid=1000112" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'A1', '0409-sd卡 单品页-http://127.0.0.1:8080/DaMi3/showinfo?productid=1000112']);"><img width="515" height="425" src="img/peijian_files/xmAcce_A.jpg" alt="" /></a></li>
				<li><a href="http://www.xiaomi.com/goods/1217" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'A2', '0409-精选套餐 单品页-http://www.xiaomi.com/goods/1217']);"><img width="515" height="425" src="img/peijian_files/xmAcce_B.jpg" alt="" /></a></li>
				<li><a href="http://www.xiaomi.com/goods/1216" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'A3', '0409-简约套餐 单品页-http://www.xiaomi.com/goods/1216']);"><img width="515" height="425" src="img/peijian_files/xmAcce_C.jpg" alt="" /></a></li>
				<li><a href="http://www.xiaomi.com/goods/1218" onClick="_gaq.push(['_trackEvent', '配件首页广告点击', 'A4', '0409-豪华套餐 单品页-http://www.xiaomi.com/goods/1218']);"><img width="515" height="425" src="img/peijian_files/xmAcce_D.jpg" alt="" /></a></li>
			</ul>
			<ul class="pagination" id="pagination">
				<li><a href="javascript:;">1</a></li>
				<li><a href="javascript:;">2</a></li>
				<li><a href="javascript:;">3</a></li>
				<li><a href="javascript:;">4</a></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript" src="img/peijian_files/xmEB_foc.js"></script>
<script>
var xmSlider = new xmfocus.slider();
xmSlider.init({
    gallery: "slides",
    control: "pagination",
    dir: false,
    index: 0,
    speed: 20,
    interval: 5000,
    type: "click"
});
</script>
	</div>
	<!-- main -->
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
                <p>&COPY;2012 <a href="http://www.xiaomi.com/" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="http://www.xiaomi.com/about" >关于大米</a><a href="http://www.xiaomi.com/about/jobs">小米招聘</a><a href="http://www.xiaomi.com/about/contact">联系我们</a>
                    <span>大米公司旗下网站：</span><a href="http://www.xiaomi.com/" class="xiaomi_lnk">大米网</a></p>
            </div>	
		</div><!-- page -->
		<script type="text/javascript" src="img/peijian_files/unamecoo.js"></script>
		<script>var goodsNum=getCookie('xm_user_www_num');if(goodsNum==null){goodsNum=0}if('http://www.xiaomi.com'.indexOf(window.location.host)>=0&&miid){var html='<ul class="cfl"><li class="regArea_l"><span class="user">'+username+'</span><a class="T_logout" href="http://order.xiaomi.com/site/logout">退出</a><a class="T_order" href="http://order.xiaomi.com/user/order">我的订单</a></li><a class="cart T_cart" href="http://order.xiaomi.com/cart">购物车<span id="goodsNum"></span></a></li><li class="regArea_r"><a style="color:#19B8F3;" href="http://www.xiaomi.com/service" target="_blank" class="reg_done">必看，购买小米手机的常见问题</a></ul>';_getid("regArea").className='reg';_getid("regArea").innerHTML=html}if(_getid("goodsNum")){if(goodsNum>=1){_getid("goodsNum").className="highlight"};_getid("goodsNum").innerHTML="\n("+goodsNum+")"}</script>
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

<!-- This document saved from http://www.xiaomi.com/accessories -->
