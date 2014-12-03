<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="img/shoppingNo_files/shopping.css" />
        <link href="img/login/logo.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="img/shoppingNo_files/base0000.css" />
<title>小米网 - 小米手机官网 官方论坛 小米手机及原装配件唯一在线销售渠道-我的购物车</title>
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
            <div class="container">
	<div id="content">
		<div class="shopCarbag">
	<ul class="shopCarNav">
		<li title="第一步 购物车结算" class="item1"><span class="hidden">第一步 购物车结算</span></li>
		<li title="第二步 填写订单信息" class="item2"><span class="hidden">第二步 填写订单信息</span></li>
		<li title="第三步 支付/确定订单" class="item3"><span class="hidden">第三步 支付/确定订单</span></li>
	</ul>
</div>
<div class="flash-success xmcart_message" style="display:none" id="flash-success"></div>

<div class="shopCarBox" id="shopCarBox">
        <div id="cart-grid" class="list-view">
    	<p class="emptyShopCar_tips"><span>您的购物车还是空的，<br/>赶紧行动吧！</span><a class="T_goShop" href="peijian">马上去购物</a></p>
    	<style type="text/css">
         .flash-success{display:none}
    	</style>
    </div>
    </div>

<script>
/**
 * 把金额的尾数0去掉
 */
var humanReadableNumber=function (t){
    if(-1==t.toFixed(2).toString().indexOf(".")){
        return (t.toFixed(2).toString());
    }else{
        return (t.toFixed(2).toString().replace(/(.+?)(0{1,})$/,"$1").replace(/(.+)\.$/,"$1"));
    }
}
//删除购物车的回调函数
var success = function(id,msg) {
    extra=eval("("+msg+")");
    /*extra.deleteBatch==1意味着需要删除套装*/
    var batchList=$(".shopCarUl").find(".batchGoods");
    	 //只有购物车被删除空了，才去重新加载页面，显示购物车为空
		var curObj=$("#"+id).parent().next("p.mi_price");
		var itemPrice =parseFloat(curObj.find("strong").eq(0).text()).toFixed(2);
	    var itemCount = parseInt(curObj.find('select').val());
        var battchNum="";
        if(extra.deleteBatch==1){
            for(var i=0;i<batchList.length;i++){
                battchNum+=(parseFloat(batchList.eq(i).find("p.mi_price").find("strong").eq(0).text()).toFixed(2)*batchList.eq(i).find('select').val());
                batchList.eq(i).remove();
            }
        }
		var reNum=/\d+/;
		var goodsNum =reNum.exec($("#goodsNum").html());
	    $("#goodsNum").html("\n("+(goodsNum-itemCount)+")");
	    $("#"+id).parent().parent().parent().remove();
        //重新计算购物车总金额
        var totalDom=$(".shopCarTotal").find("strong").find("span");
        var totalPrice =totalDom.text();
        totalPrice=parseFloat(totalPrice.replace(",",""));
        totalDom.text(humanReadableNumber(totalPrice-itemPrice*itemCount-battchNum));
        if($('.flash-success').length>0){
            $('.flash-success').html('购物车修改成功')
        }else{
            $('.shopCarbag').after('<div class=\"flash-success xmcart_message\">购物车修改成功</div>');
        }
        if($("li.shopCarLi").length==0){
          $(".flash-success").hide();
          $("div.shopCarBox").html(""+
                 "<div class='list-view' id='cart-grid'>"+
                 "<p class='emptyShopCar_tips'><span>您的购物车还是空的，<br>赶紧行动吧！</span><a href='/index.php'>马上去购物</a></p>"+
                 "</div>"
            );
          $("#goodsNum").html("\n(0)");
        }
        //ie6下删除商品后 商品金额合计div 显示bug
        if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
        	location.reload();
        }
}
function changeGoodsCount(obj) {
    return $.ajax({
        type: 'post',
        url: '/cart/update',
        data: obj.serialize(),
        success: function(data) {
           if(data == 'ok') {
               var goodsNum= getCookie('xm_user_www_num');
               $("#goodsNum").html("\n("+goodsNum+")");
            } else if(data == 'CANTMODIFY') {
                alert('该商品不允许修该数量');
                return false;
            }else if(data == 'MAX') {
                alert('超出商品最大购买数');
                return false;
            }else{
                 alert('修改失败，请重新再试');
                 return false;
            }
            
            $.get("/cart?ajax=shopCarBox",function(data){
                var id="#shopCarBox";
                $(id).replaceWith('<div id="shopCarBox">'+data+'</div>');
            });
            if($(".flash-success").length==0){
                $('.shopCarbag').after('<div class=\"flash-success xmcart_message\">购物车修改成功</div>');
            }else{
                $('.flash-success').html('购物车修改成功');
            }
            
        }
    });
}
</script>
	</div><!-- content -->
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
		<script type="text/javascript" src="img/shoppingNo_files/unamecoo.js"></script>
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

<!-- This document saved from http://order.xiaomi.com/cart -->
