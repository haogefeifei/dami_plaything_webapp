<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
   
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="" />
        <link href="img/login/logo.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="img/guanli_files/base0000.css" />
<title>大米网 - 我的管理</title>
		

     </head>
    <body>

                                    <div class="reg" id="regArea">
						<jsp:include page="UesrInfo.jsp"/>
						
                    </div>
                        <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="大米手机官网" href="http://www.xiaomi.com/index.php">大米手机官网</a></h1>
                <div class="menu">
                    <ul id="mainMenu_top">
                       <li class="m1"><a class="T_home  " href="index.jsp"><span>首页</span></a></li>
                        <li class="m2"><a class="T_mione " href="DaMiInfo.jsp"><span>大米手机</span></a></li>
                        <li class="m3"><a class="T_accessories " href="peijian"><span>原装配件</span></a></li>
                        <li class="m4"><a class="T_download " href="xiazai.jsp"  ><span>下载专区</span></a></li>
                        <li class="m5"><a class="T_service " href="Untitled-1s.jsp"  ><span>服务支持</span></a></li>
                        <li class="m6"><a class="T_forum" href="#" target="_blank"><span>用户论坛</span></a></li>
                        <li class="m7"><a class="T_miui" href="http://www.miui.com/" target="_blank"><span>MIUI</span></a></li>
                        <li class="m8"><a class="T_miliao" href="http://www.miliao.com/" target="_blank"><span>米聊</span></a></li>
                    </ul>			
                </div>
            </div>
            <!-- header -->
            <div id="container">
    <link rel="stylesheet" href="img/guanli_files/userCent.css" />
	<div class="userCenter-title">
		<h1>我的管理</h1>
	</div>
	<div class="aside">
		<div class="nav">
			<div class="portlet" id="yw1">
<div class="portlet-decoration">
<div class="portlet-title">我的订单</div>
</div>
<div class="portlet-content">
<ul class="operations" id="yw2">
<li><a class="T_navOrder" href="mydingdan"><s:if test="status==5"><b></s:if>查看所有订单<s:if test="status==5"></b></s:if></a></li>
<li><a class="T_navOrder" href="indentfind?status=0"><s:if test="status==0"><b></s:if>查看等待发货订单<s:if test="status==0"></b></s:if></a></li>
<li><a class="T_navOrder2" href="indentfind?status=1"><s:if test="status==1"><b></s:if>查看已发货订单<s:if test="status==1"></b></s:if></a></li>
<li><a class="T_navOrder2" href="indentfind?status=2"><s:if test="status==2"><b></s:if>查看已收货订单<s:if test="status==2"></b></s:if></a></li>
<li><a class="T_navOrder2" href="indentfind?status=3"><s:if test="status==3"><b></s:if>查看取消中订单<s:if test="status==3"></b></s:if></a></li>
<li><a class="T_navOrder2" href="indentfind?status=4"><s:if test="status==4"><b></s:if>查看已关闭订单<s:if test="status==4"></b></s:if></a></li>
</ul></div>
</div><div class="portlet" id="yw3">
<div class="portlet-decoration">
<div class="portlet-title">我的售后服务单</div>
</div>
<div class="portlet-content">
<ul class="operations" id="yw4">
<li><a class="#" href="">退换货单</a></li>
<li><a class="T_customerservice" href="#">维修单</a></li>
</ul></div>
</div><div class="portlet" id="yw5">
<div class="portlet-decoration">
<div class="portlet-title">我的个人信息</div>
</div>
<div class="portlet-content">
<ul class="operations" id="yw6">
<li><a class="T_navAddress" href="http://order.xiaomi.com/user/address">收货地址</a></li>
<li><a class="T_navAddress" href="xgmm.jsp">修改密码</a></li>
</ul></div>
</div>		</div>
	</div>
	<!-- aside -->
	<div class="main">
		<h2 class="m_title">退换货订单</h2>
<div class="m_table m_order_list m_order_nav">
	<table style="display:none">
		<thead>
			<tr>
				<td width="441px" style="text-align:left;">商品名称</td>
				<td width="91px">单价</td>
				<td width="57px">数量</td>
				<td width="91px">实付款</td>
				<td width="76px">订单状态</td>
				<td width="76px">操作</td>
			</tr>
		</thead>
	</table>
</div>


<div class="m_table m_order_list">
	<!--在这个层写内容！！！！！-->
   <p><h1>
   <s:if test="status==5">查看所有订单</s:if>
   <s:if test="status==0">查看等待发货订单</s:if>
   <s:if test="status==1">查看已发货订单</s:if>
   <s:if test="status==2">查看已收货订单</s:if>
   <s:if test="status==3">查看取消中订单</s:if>
   <s:if test="status==4">查看已关闭订单</s:if>
   </h1></p>
   <hr><br>
   
   
<table class="odr_bigtable">
 <s:iterator value="#session.order"  var="o">
	<thead>
		<tr>
			<th colspan="3" class="cfl">
					<span class="datetime">成交日期：<s:property value='#o.indent.time' /></span>
					<span>订单号：</span>
					<a href="indentinfo?indentid=<s:property value='#o.indent.id' />"><s:property value='#o.indent.id' /></a>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="btd1 notd">
				<table class="odr_smtable">
					<tbody>
						<tr>
							<td class="std1">
								<!-- <div class="divorder">  -->
									<a class="mimg" target="_blank" href="showinfo?productid=<s:property value="#o.indentproduct.get(0).product.psid" />"><img src="<s:property value="#o.indentproduct.get(0).product.pimg" />"></a>																																					
								<s:if test="#o.indentproduct.size()>1">
									<a class="mimg" target="_blank" href="showinfo?productid=<s:property value="#o.indentproduct.get(1).product.psid" />"><img src="<s:property value="#o.indentproduct.get(1).product.pimg" />"></a>
								</s:if>
								<s:if test="#o.indentproduct.size()>2">
									<a class="mimg" target="_blank" href="showinfo?productid=<s:property value="#o.indentproduct.get(2).product.psid" />"><img src="<s:property value="#o.indentproduct.get(2).product.pimg" />"></a>
								</s:if>																																									</div>
							</td>
							<td class="std2">
								<span>
									<s:if test="#o.indent.info==0">等待发货</s:if>
									<s:if test="#o.indent.info==1">已发货</s:if>
									<s:if test="#o.indent.info==2">已签收</s:if>
									<s:if test="#o.indent.info==3">取消中</s:if>
									<s:if test="#o.indent.info==4">已关闭</s:if>
								</span>
							</td>
							<td class="std3">
								<s:if test="#o.indent.info==0"><a href="calloff?indentid=<s:property value='#o.indent.id' />">取消订单</a></s:if>	
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td class="btd2">
				<span>¥<s:property value='#o.indent.totalprices' /></span>
				<p>货到付款</p>
			</td>
			<td class="btd3">
				<a href="indentinfo?indentid=<s:property value='#o.indent.id' />" class="agray">订单详情</a>
			</td>
		</tr>
	</tbody>
</s:iterator>
</table>


    
</div>



























	</div>
	<!-- main -->
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
                <p>&COPY;2012 <a href="http://order.xiaomi.com/" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="http://www.xiaomi.com/about" >关于大米</a><a href="http://www.xiaomi.com/about/jobs">小米招聘</a><a href="http://www.xiaomi.com/about/contact">联系我们</a>
                    <span>大米公司旗下网站：</span><a href="http://order.xiaomi.com/" class="xiaomi_lnk">小米网</a><a class="miui_lnk" href="http://www.miui.com/" target="_blank">MIUI</a><a class="miliao_lnk" href="http://www.miliao.com/" target="_blank">米聊</a></p>
            </div>	
		</div><!-- page -->
		<script type="text/javascript" src="img/guanli_files/unamecoo.js"></script>
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

<!-- This document saved from http://order.xiaomi.com/user/order/4 -->
