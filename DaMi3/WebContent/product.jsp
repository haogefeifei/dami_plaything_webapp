<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>
        <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="img/product/shopping.css">
<link rel="stylesheet" type="text/css" href="img/product/base0000.css">
<script type="text/javascript" src="img/product/jquery00.js"></script>
<script type="text/javascript">
/*<![CDATA[*/
var needChioce = false;
/*]]>*/
</script>
<title>大米网 - 大米手机官网 官方论坛 大米手机及原装配件唯一在线销售渠道--商品详情</title>
		<meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。">
		<meta name="keywords" content="小米手机,智能手机,android,小米公司">
            </head>
    <body>
                                    <div class="reg" id="regArea"> 
						<jsp:include page="UesrInfo.jsp"/>
                    </div>
                        <div id="page" class="container">
            <div id="header">
                 <h1 class="logo"><a title="小米手机官网" href="index.jsp">小米手机官网</a></h1>
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
            <div class="container">
	<div id="content">
		
<div class="proWrap">
	<div class="proCon cfl">
		<div class="proCon_pics">
			<div class="proCon_pics_midBox">
				<a id="zoom1" href="<s:property value="pimg.get(0)" />" class="cloud-zoom">
                    <img id="proCon_pics_midSize" src="<s:property value="pimg.get(0)" />" width="470" height="470">
				</a>
			</div>
			<div class="proCon_pics_smallMain">
				<div class="proCon_pics_smallBox" id="proCon_slider">
					<ul>
						<s:iterator value="pimg"  var="i">
						<li><a rel="useZoom:'zoom1',smallImage:'${i}'" class="cloud-zoom-gallery" href="${i}"> <img alt="" src="${i}" width="60" height="60"></a></li>
						</s:iterator>					
					</ul>
				</div>
			</div>
		</div>
		<p class="proCon_imgShow_Link">
			<a href="productgetImg?productid=<s:property value="product.psid" />" target="_blank">查看图集</a>
		</p>
		<%-- ---------------------表单--------------------- --%>
		<form action="product_updateproduct" method="post" name="form1111" >
		<div class="proCon_form">
		<%-- 商品名称 --%>
			<h2><s:property value="product.pname" /></h2>
			<ul class="proCon_form_intro">
			<%-- 商品小简介 --%>
				<li><s:property value="product.pinfo" /></li>
			</ul>
			<div class="proCon_form_cfl cfl">
								<%-- 商品价格 --%>
                                <p class="proCon_form_price">售价：<strong><span>¥ </span><em><s:property value="product.price" /></em></strong></p>
                                <%-- 商品编号 --%>
								<p class="proCon_form_goodIndex">商品编号：<s:property value="product.psid" /></p>
			</div>
			<div class="proCon_form_box">
				<div class="proCon_form_box_upCon">
				<%-- 商品关联名称 --%>
				
				<h3 class="proCon_form_box_spe">选择<s:property value="product.pnameid" /></h3>
									<dl class="styleSel_list_r_name">
		                <dd class="cfl styleSel_list_r_name_goodsList">
		                <%-- 关联商品 --%>
		                    <s:iterator value="rimg"  var="r">
		                
		                <s:if test="product.psid == #r.psid ">
		                	<a gid="1023" class="cfl proCon_form_goodsStyle selected" href="<s:text name="showinfo?productid=%{#r.psid}"/>" title="<s:property value='#r.pname' />（<s:property value='#r.pselect' />）">
		                       <img src="<s:property value="#r.pimg" />" alt="">
		                        <strong><s:property value="#r.pselect" /></strong>
		                        <span></span>
		                    </a>
		                </s:if>
		                <s:else>
		                	<a gid="1023" class="cfl proCon_form_goodsStyle" href="<s:text name="showinfo?productid=%{#r.psid}"/>" title="<s:property value='#r.pname' />（<s:property value='#r.pselect' />）">
		                       <img src="<s:property value="#r.pimg" />" alt="">
		                        <strong><s:property value="#r.pselect" /></strong>
		                        <span></span>
		                    </a>
		                </s:else>
		                    
     					</s:iterator> 		                   
		                    
		             	</dd>
		                
		            </dl>
		            <h3>数量</h3>
					<p class="proCon_form_box_numSelect">
						
             			<input type="hidden" name="pid" value="${product.psid}">
             			
						<select name="pcount">
               				<option value="1">1</option>
               				<option value="2">2</option>
               				<option value="3">3</option>
               				<option value="4">4</option>
               				<option value="5">5</option>
               				<option value="6">6</option>
               				<option value="7">7</option>
               				<option value="8">8</option>
               				<option value="9">9</option>
               				<option value="10">10</option>
               				
						</select>
					</p>
				</div>
				<div class="proCon_form_box_form cfl ">
					<dl>
						<dt>快点点击购买吧~</dt>
					</dl>
					<p class="proCon_form_box_btn">
                    <img src="img/product/shoppingOk.png" onclick="return document.form1111.submit();"/>
		                					</p>
                    
				</div> 
              </div>        	
		</div>
		 </form>
		 <%-- ---------------------表单--------------------- --%>		
	</div>
	
	<div class="proDetails">
		<ul class="proNotice_tit" id="proNotice_1">
			<li class="selected"><a href="http://www.xiaomi.com/goods/1021#">商品信息</a></li>
			<li><a href="http://www.xiaomi.com/goods/1021#">规格参数</a></li>
		</ul>
		<div class="proDetails_tips on" id="goodsImgs_load">
        <!--PLEASE DO NOT DELETE THE BELOW TAG-->
        
        <!--description_token_start-->  
        	${product.pmessage}      
        <!--description_token_end-->
		
		</div>
		<div class="proDetails_tips">
		
			${product.pnorms}      
			  
		</div>
	</div> 
	<div class="proDetails">
		<ul class="proNotice_tit" id="proNotice_2">
                        <li class="selected"><a href="http://www.xiaomi.com/goods/1021#">如何购买</a></li>
            			<li><a href="http://www.xiaomi.com/goods/1021#">支付帮助</a></li>
			<li><a href="http://www.xiaomi.com/goods/1021#">配送帮助</a></li>
			<li><a href="http://www.xiaomi.com/goods/1021#">保障政策</a></li>
			<li><a href="http://www.xiaomi.com/goods/1021#">常见问题</a></li>
		</ul>
		            <div class="proDetails_pics" style="display:block;">
            			<img src="img/product/xmsale_g.gif" alt="小米手机购买流程">
			<div class="proDetails_pics_goodshow">
				<h3>免费取货维修</h3>
				<img src="img/product/xmsale_h.gif" alt="小米手机免费取货保修">
				<h3>常见问题</h3>
				<dl>
					<dt>Q1: 没有网上银行，可否购买小米手机？</dt>
					<dd>
						<strong>A1: </strong>可以购买。<br>
						<p>方法一：选择“货到付款”方式购买，您只需要在下单时，选择“货到付款“方式即可，货到付款可采用现金及刷卡方式。<br>方法二：选择“在线支付”购买，选择支付宝快捷支付，输入您的银行卡号及手机号码，验证信息后，即可成功支付。</p>
					</dd>
					<dt>Q2: 签收小米手机时是否要现场验收？</dt>
					<dd>
						<strong>A2: </strong>签收时，务必当场检查是否出现包装破损等问题，不支持拆包验货。
					</dd>
					<dt>Q3: 配送需要多长时间？</dt>
					<dd>
						<strong>A3: </strong>
						一般情况下，北京城区24小时，郊区48小时；除北京以外的地区2-8天，具体到货时间请您以货运单号查询结果为准。
					</dd>
				</dl>
			</div>
		</div>
		<div class="proDetails_pics">
			<dl>
				<dt>支持在线支付、货到付款、上门自提三种方式</dt>
				<dd>
					1. 在线支付支持支付宝、财付通与国内二十多家主流银行机构的储蓄卡、信用卡的网上付款。<br>
					2. 货到付款目前支持10个城市，<a href="http://www.xiaomi.com/service/cod" target="_blank">点击查询</a><br>
					3. 上门自提：小米之家北京服务站试行中，目前支持现金支付。将陆续在南京、深圳、上海、广州、武汉、成都6个城市开通；后续会在更多的城市开通小米之家服务站。
				</dd>
				<dt>网上银行与支付限额申请</dt>
				<dd>
					因各银行政策不同，建议您在网上支付前确认您已经开通网上支付功能。<br>
					目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您向发卡行咨询。
				</dd>
			</dl>
		</div>
		<div class="proDetails_pics">
			<dl>
				<dt>小米网商品全部使用凡客诚品的配送体系，包括如风达及其合作伙伴。</dt>
				<dd>一般情况下，北京城区24小时，郊区48小时；除北京以外的地区2-8天，具体到货时间请以货运单号查询结果为准。</dd>
			</dl>
		</div>
		<div class="proDetails_pics">
			<dl>
				<dt>小米手机质量服务承诺：7天包退，15天包换，一年保修。</dt>
				<dd><strong>7天包退</strong> <br>自您购买签收日起7日内，移动电话主机出现《移动电话机商品性能故障表》所列性能故障的情况，经由小米售后服务中心检测确定，依据您的选择，免费办理退货、换货或者修理。 </dd>
				<dd><strong>15天包换</strong> <br>自您购买签收日起8日-15日内，移动电话主机出现《移动电话机商品性能故障表》所列性能故障的情况，经由小米售后服务中心检测确定，依据您的选择，可免费进行换货或者修理。 符合更换条件，若无同型号同规格产品，消费者要求退货，小米公司将为消费者按发票价格一次性全额退款。</dd>
				<dd><strong>一年保修</strong> <br>
					1. 自您购买签收日起12个月内，移动电话主机出现《移动电话机商品性能故障表》所列性能故障的情况，经由小米售后服务中心检测确定，依据您的选择，可免费进行修理<br>
					2. 从送修之日起，由于维修者原因维修时间超出 30天或由于厂家原因维修时间超过60天的小米公司为消费者免费更换同型号同规格的新机；<br>
					3. 出现三包范围内故障经两次维修以上仍不能正常工作的，凭保修卡中维修者提供的维修记录，小米公司将为消费者可更换同型号同规格产品；<br>
					4. 符合更换条件，若有同型号同规格产品，消费者要求退货，小米公司将按发票价格从购机之日到退机之日(扣除修理占用和待修时间)每日0.5％的折旧退货；<br>
					5. 符合更换条件，若无同型号同规格产品，消费者要求退货，小米公司将为消费者按发票价格一次性全额退款。
				</dd>
      			<dd>电池、充电器、外接有线耳机、数据接口卡等移动电话机附件，出现《移动电话机商品性能故障表》所列性能故障的，经由小米售后服务中心检测确定，可为您免费更换同品牌同型号同规格的附件。</dd>
      			<dd>当您的移动电话出现《移动电话机商品性能故障表》所列性能故障，办理退货、换货、保修服务时，小米公司免费安排上门取货，在不能安排上门取货的地区，小米公司提供邮资报销服务，最高限额15元/单。</dd>
				<dd>《移动电话机商品性能故障表》与具体保障政策见：<a href="http://www.xiaomi.com/service/security" target="_blank">http://www.xiaomi.com/service/security</a></dd>
			</dl>
		</div>
		<div class="proDetails_pics">
			<div class="proDetails_pics_goodshow">
				<dl>
					<dt>Q1：如何购买小米手机？</dt>
					<dd><strong>A1：</strong>小米网<a href="http://www.xiaomi.com/" target="_blank">www.xiaomi.com</a>为唯一官方购买渠道，未授权任何第三方代理销售。</dd>
					<dt>Q2：港澳台及国外用户能否购买小米手机？</dt>
					<dd><strong>A2：</strong>小米网目前尚未开通港澳台及国外用户购买通道。</dd>
					<dt>Q3：支持哪些地区货到付款？</dt>
					<dd><strong>A3：</strong>目前我们已开通<a href="http://www.xiaomi.com/service/cod" target="_blank">全国10个地区</a>的货到付款业务。更多城市，陆续开通中。</dd>
					<dt>Q4：如何查询配送进度？</dt>
					<dd><strong>A4：</strong>登陆后，打开“我的订单”查看订单详情，如果您的订单状态为“已发货”，可凭您订单中的货运单号，到如风达官网rufengda.com查询配送情况。</dd>
					<dt>Q5：是否有实体店可以体验真机？</dt>
					<dd><strong>A5：</strong>目前小米手机没有实体店，部分地区用户可以选择“上门自提”方式到指定小米之家服务站了解真机。</dd>
					<dt>Q6：小米之家服务站在哪些地方开通？</dt>
					<dd><strong>A6：</strong>小米之家北京服务站试行中。将陆续在北京、南京、深圳、上海、广州、武汉、成都6个城市开通；后续会在更多的城市开通小米之家服务站，如果您所在的城市没有服务站需要进行售后服务，请与小米客服中心联系。</dd>
					<dt>Q7：是否提供发票？提供哪几种发票</dt>
					<dd><strong>A7：</strong>提供发票。默认提供普通个人发票，您可以选择普通公司发票和增值税发票。以挂号信的方式随后寄出。</dd>
					<dt>Q8：没有网银，是否可以在线支付？</dt>
					<dd><strong>A8：</strong>可以。请点击在线支付，选择支付宝快捷支付，输入您的银行卡号及手机号码，验证信息后，即可成功支付。</dd>
					<dt>Q9：三包日期从何时算起？</dt>
					<dd><strong>A9：</strong>自商品签收之日算起。</dd>
					<dt>Q10：三包凭证丢失后，是否享受三包服务？</dt>
					<dd><strong>A10：</strong>您可凭手机的IMEI号和发票享受三包服务。</dd>
				</dl>
				<p class="proDetails_pics_moreQues">更多常见问题见：<a href="http://www.xiaomi.com/service/" target="_blank">http://www.xiaomi.com/service/</a></p>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">$(function(){$(".proCon_pics_smallBox").find("li").eq(0).addClass("selected");Xmeb.App.lazyload({defObj:"#goodsImgs_load",defHeight:100});$(".cloud-zoom").attr("rel","smoothMove:5,zoomWidth:507,zoomHeight:489,lensOpacity:0.5,softFocus:false");$("#proCon_slider").easySlider({auto:false,controlsBefore:'<p id="controls">',controlsAfter:'</p>',scrollNum:6,speed:300});Xmeb.Page.goodsDetail.creatURI_main("single");Xmeb.Page.goodsDetail.tabsMenu('proNotice_1', 'proDetails_tips');Xmeb.Page.goodsDetail.tabsMenu('proNotice_2', 'proDetails_pics');});var iniPrice=$(".proCon_form_price").find("em").text();var iniURL=$("#proCon_form_box_btnGonext").attr("href");$("table.paraTable tr:even").addClass("even");</script>

	</div><!-- content -->
</div>
            <div class="promise">
                <ul>
                    <li class="pr1"><a href="http://www.xiaomi.com/service/exchange">7天退货保障</a></li>
                    <li class="pr2"><a href="http://www.xiaomi.com/service/exchange">15天换货承诺</a></li>
                    <li class="pr3"><a href="http://www.xiaomi.com/service/transfer">200元起在线支付包邮</a></li>
                    <li class="pr4"><a href="http://www.xiaomi.com/service/poststation">340余家售后服务点</a></li>
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
		<script type="text/javascript" src="img/product/unamecoo.js"></script>
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
    <script type="text/javascript" src="img/product/xm_goods.js"></script>
</body>
</html>

<!-- This document saved from http://www.xiaomi.com/goods/1021 -->
