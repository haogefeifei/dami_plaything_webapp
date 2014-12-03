<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="img/dingdan_files/shopping.css" />
        <link href="img/login/logo.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="img/dingdan_files/styles00.css" />
<link rel="stylesheet" type="text/css" href="img/dingdan_files/base0000.css" />
<style type="text/css">
/*<![CDATA[*/
.newAddressForm{display:none}
/*]]>*/
</style>

<title>小米网 - 小米手机官网 官方论坛 小米手机及原装配件唯一在线销售渠道-填写订单信息</title>
		<meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。" />
		<meta name="keywords" content="小米手机,智能手机,android,小米公司" />
            </head>
    <body>
    
    
                    <div class="reg" id="regArea">
						<jsp:include page="UesrInfo.jsp"/>
                    </div>
                    
                    
                    
          <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="小米手机官网" href="http://www.xiaomi.com/index.php">小米手机官网</a></h1>
                <div class="menu">
                    <ul id="mainMenu_top">
                         <li class="m1"><a class="T_home  " href="index.jsp"><span>首页</span></a></li>
                        <li class="m2"><a class="T_mione " href="DaMiInfo.jsp"><span>小米手机</span></a></li>
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

<form name="form1" method="post" action="addindent"><div class="shopCarbag">
	<ul class="shopCarNav shopCarNav2">
		<li title="第一步 购物车结算" class="item1"><span class="hidden">第一步 购物车结算</span></li>
		<li title="第二步 填写订单信息" class="item2"><span class="hidden">第二步 填写订单信息</span></li>
		<li title="第三步 支付/确定订单" class="item3"><span class="hidden">第三步 支付/确定订单</span></li>
	</ul>
</div>
<div class="shopInfro">


<div class="shopInfro_tit cfl">
	<h2>收货人信息</h2>
    <input type="hidden" value="0" name="Checkout[address]" id="Checkout_address" /></div>
<p class="shopInfro_tit_Tips">此地址同时用于邮寄发票，请务必认真填写，发票在一个月内寄出。</p>
<div class="infor_newAdress" style="display:block">
    <div class="m_form m_form_order">
                        <div class="m_f m_f_username cfl">
                <label for="UserAddress_consignee">真实姓名<span>&#42;</span></label>
                <input type="text" name="indent.addressname" type="text" maxlength="15" />                            </div>
            <div class="m_f m_f_address">
				<div class="m_f_address_select cfl">
							<label for="">地址<span>&#42;</span></label>
                           

                                            </div>
                    <div class="m_f_address_details cfl">
                               <input type="text" name="indent.addressadd" type="text" maxlength="15" />   
                                                                                            </div>
                    <div class="m_f_zipcode cfl">
                    		<label for="">邮政编码<span>&#42;</span></label>
                                                <input  name="indent.zipcode" type="text" maxlength="60" />						                        <div class="m_f_msg" id="ziptips"></div>
                    </div>
                </div>
                <div class="m_f m_f_mobile cfl">
                    <label for="UserAddress_tel">联系电话<span>&#42;</span></label>
                    <input name="indent.telnumber" type="text" maxlength="60" /> 
                                       					<div class="m_f_msg">11位手机号</div>
                </div>

    </div>
</div>

<div class="shopInfro_tit cfl">
	<h2>支付与配送</h2>
</div>
<div class="shopInforPay shopInforTime" id="payment">
      
    <ul>
        
        <li ><label><input value="1" checked="checked" type="radio" name="Checkout[pay_id]" id="Checkout_pay_id" />货到付款                
        </label>
                </li>
        
        <li class='radioDisabled'><label><input value="2" disabled="disabled" type="radio" name="Checkout[pay_id]" id="Checkout_pay_id" />在线支付<span>（暂不支持）</span>         
        </label>
                </li>
                
	</ul>




</div>


<hr/>


<div class="shopInfro_tit cfl">
	<h2>我的购物车</h2>
	<p class="item1"></p>
</div>
<ul class="shopCarUl" id="shopCarUlForm">
 <s:set value="0" var="sum"/>   
 <s:iterator value="#session.cart"  var="c">
       
<li class="  shopCarLi cfl  even" >
	<div class="shopCarLi_box cfl">

			<p class="mi_goods_pic" >
                  	<a href="psort?pid=<s:property value="#c.cartItem.product.psid" />" target="_blank"></a>
					<img src="<s:property value='#c.cartItem.product.pimg' />" />
      
            
			<p class="mi_goods_name">
                                <strong><s:property value="#c.cartItem.product.pname" /></strong>
                				<span>编号：<s:property value="#c.cartItem.product.psid" /></span>
			</p>
            
		    <p class="mi_del_order">
		    	<a href="deleshopcart?cartid=<s:property value="#c.shopid" />" id="yt0">删除</a>
               <strong><span><s:property value="(#c.cartItem.product.price)*(#c.cartItem.pcount)" />元</span></strong>
                 <s:set var="sum" value="#sum+(#c.cartItem.product.price)*(#c.cartItem.pcount)"/>
		    </p>
            
            
		    <p class="mi_price">
                                <strong><s:property value="#c.cartItem.product.price" /></strong> x <select>
<option value="<s:property value="#c.cartItem.pcount" />" selected="selected"><s:property value="#c.cartItem.pcount" /></option>

</select><strong>件</strong> =
                		        
			</p>
    </div>
                 
</li>


</s:iterator>

</ul>

<div class="promotation cfl" >
<div class="flash-success xmcart_message" style="display:none" id="flash-success"></div>    
  
    <div class="shopCarTotal shopCarTotal_userInfor">
		<p class="shop_extraTotal">配送费：<span>0.00</span>元</p>
	 	合计： <strong><span class="shopPrice_item"><s:property value="#sum" /></span>元</strong>
	 	<input type="hidden" name="sum" value="<s:property value="#sum" />">
	</div>
</div>
<div class="shopInfor_btn cfl">
	<p class="item2">
	<a href="shopcart" title="返回购物车" class="T_cartBack"><span class="hidden">返回购物车</span></a>
	<input name="Submit"  type="submit" value="    " /></p>
</div>
</form></div>
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
        
		
</body>
</html>

<!-- This document saved from http://order.xiaomi.com/buy/checkout -->
