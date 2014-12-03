<%@ page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>
        <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="img/peijian1_files/styles00.css">
<link rel="stylesheet" type="text/css" href="img/peijian1_files/pager000.css">
<link rel="stylesheet" type="text/css" href="img/peijian1_files/accessor.css">
<link rel="stylesheet" type="text/css" href="img/peijian1_files/base0000.css">
<script type="text/javascript" src="img/peijian1_files/jquery00.js"></script>
<script type="text/javascript" src="img/peijian1_files/jquery01.js"></script>
<script type="text/javascript" src="img/peijian1_files/base0000.js"></script>
<title>大米网 - 大米手机官网 官方论坛 大米手机及原装配件唯一在线销售渠道-大米手机官方原装配件</title>
		<meta name="description" content="大米手机是大米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。大米手机零售价格是1999元，10月20日正式上市，主要针对手机发烧友，采用线上销售模式。">
		<meta name="keywords" content="大米手机,智能手机,android,大米公司">
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
            <div class="accessories">
	<div class="aside">
		<div class="nav">
			<h3>全部分类</h3>
			<%-- ----------------------------------------------------------------------------------------------- --%>
			<ul>
			<li><a href="allpeijian"><s:if test="pid==0"><b></s:if>全部<s:if test="pid==0"></b></s:if></a></li>
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
		
		<div id="family_mi">
		<div class="acc_search_form">
				<%-- 查询商品 --%>
				<form action="find" id="search" method="post">
					<p class="cfl">
        			<input type="text" id="pname" name="pname" value class="acc_search_form_keyword" autocomplete="on" placeholder="输入您要找的配件..." x-webkit-speech x-webkit-grammar="builtin:search">
					<a href="javascript:;" id="searchBotton" title="点击搜索" class="acc_search_form_submit" style="background-image:url(img/peijian1_files/1.png);" >点击搜索</a>
					
					</p>
				</form>
		
			</div>
			
		<h2 class="tit">全部</h2>
<div id="cart-grid" class="list-view">
<div class="items">
<s:if test="ps.size==0"><li style="font-size: 14px;color: grey;">没有与您搜索内容相符的产品，请重新输入。</li></s:if>

<s:iterator value="ps"  var="p">
<%-- ----------------------------------------------------------------------------------------------- --%>
<div class="common">
    <dl>
        <dt>
            <a target="_blank" href="<s:text name="showinfo?productid=%{#p.psid}"/>"><img src="<s:text name="%{#p.pimg}"/>" alt=""></a>
        </dt>
        <dd><a target="_blank" href="<s:text name="showinfo?productid=%{#p.psid}"/>"><s:property value="#p.pname"/></a></dd>
        <dd class="price">¥ <s:property value="#p.price"/></dd>
    </dl>
</div>
</s:iterator>
</div>
<%-- ----------------------------------------------------------------------------------------------- --%>	
<%--*<<分页标签>>
	*page.totalPage ->总页数
	*page.currentPage ->当前页数			
--%>
<br/><br/><br/>
<div class="pager">
<ul id="yw0" class="yiiPager">
<s:if test="page.totalPage<=1"></s:if>
				<s:else>
					<li class="first hidden"><a href="http://www.xiaomi.com/accessories/all">首页</a></li>
					<%-- 判断是否有上一页 --%>
					<s:if test="page.currentPage>1"><li class="previous hidden"><a href="pageall?currentPage=${page.currentPage-1}">上一页</a></li></s:if>	
					<s:else><li class="previous hidden"><a href="">上一页</a></li></s:else>
					<%-- 总页数小于或等于10页 --%>
					<s:if test="page.totalPage<=10">	
						<s:iterator begin="1" end="page.totalPage" var="i">	
							<s:if test="#i==page.currentPage"><li class="page selected"><a href="pageall?currentPage=${i}">${i}</a></li></s:if>
							<s:else><li class="page"><a href="pageall?currentPage=${i}">${i}</a></li></s:else>
						</s:iterator>
					</s:if>
					<%-- 总页数不小于或等于10页，并且当前页数小于或等于第6页 --%>
					<s:elseif test="page.currentPage<=6">
						<s:iterator begin="1" end="10" var="i">	
							<s:if test="#i==page.currentPage"><li class="page selected"><a href="pageall?currentPage=${i}">${i}</a></li></s:if>
							<s:else><li class="page"><a href="pageall?currentPage=${i}">${i}</a></li></s:else>
						</s:iterator>
					</s:elseif>
					<%-- 当前页数>总页数-5 --%>
					<s:elseif test="page.currentPage>=page.totalPage-5">
						<s:iterator begin="page.totalPage-9" end="page.totalPage" var="i">	
							<s:if test="#i==page.currentPage"><li class="page selected"><a href="pageall?currentPage=${i}">${i}</a></li></s:if>
							<s:else><li class="page"><a href="pageall?currentPage=${i}">${i}</a></li></s:else>
						</s:iterator>
					</s:elseif>
					<s:else>
					 	<s:iterator begin="page.currentPage-5" end="page.currentPage+4" var="i">	
							<s:if test="#i==page.currentPage"><li class="page selected"><a href="pageall?currentPage=${i}">${i}</a></li></s:if>
							<s:else><li class="page"><a href="../DaMi3/pageall?currentPage=${i}">${i}</a></li></s:else>
						</s:iterator>					 	
					</s:else>
					<%-- 判断是否有下一页 --%>
					<s:if test="page.currentPage<page.totalPage"><li class="next"><a href="pageall?currentPage=${page.currentPage+1}">下一页</a></li></s:if>	
					<s:else><li class="next"><a href="">下一页</a></li></s:else>
						
						<li class="last"><a href="">末页</a></li>
				</s:else>
				</ul>
			<%-- ----------------------------------------------------------------------------------------------- --%>

</div>

<div class="keys" style="display:none" title="/accessories/all"><span>1021</span><span>1022</span><span>1023</span><span>1024</span><span>1025</span><span>1055</span><span>1072</span><span>1298</span><span>1303</span><span>1304</span><span>1305</span><span>1148</span><span>1153</span><span>1156</span><span>1157</span><span>1158</span><span>1159</span><span>1161</span><span>1163</span><span>1271</span></div>
</div>


</div>	</div>
	<!-- main -->
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
                <p>©2012 <a href="#" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="#">关于大米</a><a href="#">小米招聘</a><a href="#">联系我们</a>
                    <span>小米公司旗下网站：</span><a href="#" class="xiaomi_lnk">大米网</a><a class="miui_lnk" href="#" target="_blank">MIUI</a><a class="miliao_lnk" href="#" target="_blank">米聊</a></p>
            </div>	
		</div><!-- page -->
		<script type="text/javascript" src="img/peijian1_files/unamecoo.js"></script>
		
                
    <script type="text/javascript" src="img/peijian1_files/jquery02.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#searchBotton").bind("click",function(){
			$('#search').submit();
		});
	});
	</script>      
</body>
</html>

<!-- This document saved from http://www.xiaomi.com/accessories/all -->
