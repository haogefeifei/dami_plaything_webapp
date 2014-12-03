<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
   
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="" />
<link rel="stylesheet" type="text/css" href="img/guanli_files/base0000.css" />
<title>大米网 - 我的管理</title>

     </head>
    <body>
                        <div id="page" class="container">
            
            <div id="container">
    <link rel="stylesheet" href="img/guanli_files/userCent.css" />
	<div class="userCenter-title">
		<h1>我的管理</h1>
	</div>
	<div class="aside">
		<div class="nav">
			<div class="portlet" id="yw1">



</div>		</div>
	</div>
	<!-- aside -->
	<div class="main">
	
 <!-- m_order_satus -->

    <div class="m_order">
        <div class="m_order_box">
        				<h3 id="J_changeAddress">收货地址 </h3>
            <ul id="dAddress">
                <li><span class="label">姓名：</span><s:property value='#session.os.indent.addressname' /></li>
                <li><span class="label">地址：</span><s:property value='#session.os.indent.addressadd' /></li>
                <li><span class="label">联系电话：</span><s:property value='#session.os.indent.telnumber' /></li>
            </ul>
            <!--海全 黑名单修改-->

            <div id="cAddress" style="display:none;"></div>
            <h3>发票信息</h3>
            <ul>
                                    <li><span class="label">不开发票</span></li>
                                
            </ul>
            <h3 id="J_changeTime">送货时间 </h3>
            <ul id="dTime">
                <li>不限</li>
            </ul>
            <div id="cTime" style="display:none;"><ul></ul></div>
            <!--
                    <dt>发票详情</dt>
                        <dd><span class="label">发票类型：</span>不开发票</dd>
                        -->
        </div>
    </div>
<!-- m_order -->
<br>
<div class="m_table m_order_list">
        <table>
        <thead>
            <tr>
                <td style="text-align:left;" colspan="5">
                	<span>订单号：<s:property value='#session.os.indent.id' /></span>
                	<span style="margin-left:48px;">&nbsp;成交时间：</span>
                	<s:property value='#session.os.indent.time' />
                </td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="padding:0;">
                    <table>
                    	<s:iterator value="#session.os.indentproduct"  var="o">
                        <tr> 
                                <td width="187px" class style="text-align:left;">
                                      <a target="_blank" href="showinfo?productid=<s:property value='#o.product.psid' />"><img src="<s:property value="#o.product.pimg" />"></a>
                                      <!-- 商品名称 -->
                                      <a target="_blank" href="showinfo?productid=<s:property value='#o.product.psid' />"><font color="#818181"><s:property value='#o.product.pname' /></font></a>
								</td>
                                <td width="64px" valign="top" style="padding-top:14px;">¥<s:property value='#o.price' /></td>
								<td width="64px" valign="top" style="padding-top:14px;"><s:property value='#o.number' /></td>
                        </tr>
           				</s:iterator>
					</table>
                </td>
				<td valign="top" width="100px" style="padding-top:14px;text-align:left;">
					<span class="mi_total">
											原价¥<s:property value='#session.os.indent.totalprices' />
											<br>运费¥10.00
											<br>实际应付¥<font color="#f8334a">${10+session.os.indent.totalprices}</font>
					</span>
                    <!-- <p class="mi_payment">在线支付</p>
                    <p class="mi_payment">货到付款</p> -->
                </td>
				                <td valign="top" width="76px" style="padding-top:14px;">
                    <span class="mi_servicing">
                    	<s:if test="#session.os.indent.info==1">等待发货</s:if>
						<s:if test="#session.os.indent.info==2">已发货</s:if>
						<s:if test="#session.os.indent.info==3">收签收</s:if>
						<s:if test="#session.os.indent.info==4">取消中</s:if>
						<s:if test="#session.os.indent.info==5">已关闭</s:if>
					</span>
                </td>
				<td valign="top" width="81px" style="padding-top:14px;"></td>
                <td valign="top" width="68px" style="padding-top:14px;">
                <div id="order_list_1120421483479056">
                                             
                </div>
                </td>
			</tr>
         </tbody>
    </table>
</div>
<br><br><br>
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
