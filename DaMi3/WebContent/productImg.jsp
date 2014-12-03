<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<head>
        <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="img/productImg/ui000000.css">
<link rel="stylesheet" type="text/css" href="img/productImg/xm000000.css">
 <link rel="stylesheet" type="text/css" href="img/productImg/styles00.css">
<link rel="stylesheet" type="text/css" href="img/productImg/pager000.css">
<link rel="stylesheet" type="text/css" href="img/productImg/accessor.css">
<link rel="stylesheet" type="text/css" href="img/productImg/base0000.css">
<script type="text/javascript" src="img/productImg/jquery01.js"></script>
<script type="text/javascript" src="img/productImg/base0000.js"></script>
<script type="text/javascript" src="img/productImg/jquery00.js"></script>
<script type="text/javascript" src="img/productImg/xm000000.js"></script>
<title>查看图集</title>
        <meta name="description" content="大米手机">
        <meta name="keywords" content="大米米手机,大米米手机官网">
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
                        <li class="m3"><a class="T_accessories on" href="peijian"><span>原装配件</span></a></li>
                        <li class="m4"><a class="T_download " href="xiazai.jsp"  ><span>下载专区</span></a></li>
                        <li class="m5"><a class="T_service " href="peijian.jsp"  ><span>服务支持</span></a></li>
                        <li class="m6"><a class="T_forum" href="" target="_blank"><span>用户论坛</span></a></li>
                        <li class="m7"><a class="T_miui" href="http://www.miui.com/" target="_blank"><span>MIUI</span></a></li>
                        <li class="m8"><a class="T_miliao" href="http://www.miliao.com/" target="_blank"><span>米聊</span></a></li>
                    </ul>			
                </div>
            </div>
        
        <div class="breadcrumbs">
               <a href="index.jsp">大米网首页</a> <span class="separator">&gt;</span>
                <a href="peijian">配件</a> <span class="separator">&gt;</span> 
                 <span>查看图集</span></div><!-- breadcrumbs -->
                
        <div id="container">
	<div class="imgDisLayout">
	<div class="imgDisCon cfl">
		<div class="imgDisCon_l">
			<div id="imgDis_large"></div>
			<a href="javascript:;" id="imgleft">left</a>
			<a href="javascript:;" id="imgright">right</a>
		</div>
		<div class="imgDisCon_r">
			<div class="imgDisCon_r_ms" id="proCon_slider">
				<ul id="imgDis_small">	
				 <s:set var="sum" value="0"/>			
					<s:iterator value="imgs"  var="i">
                    	<li><a href="${i.bigimg}"><img src="${i.samllimg}" imgid="${sum}" alt=""></a></li>
                    	<s:set var="sum" value="#sum+1"/>	
                    </s:iterator>                                                   			
				</ul>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
var pageIndex=9;(function(){Xmeb.Page.imgShow=(function(){var currentIndex=0;var largeImg_Array=new Array();function _Init(){var objects=$("#imgDis_small li a");objects.eq(0).addClass("selectd");var currentOver=null;objects.bind("click",function(){currentOver=_PointHover(currentOver,$(this).find("img"));return false});currentOver=objects.eq(0).find("a").addClass("selectd");_LoadHdImage(0);$("#imgleft").bind("click",function(){var nextIndex=parseInt(currentIndex)-1;if(nextIndex<0)nextIndex=objects.length-1;currentOver=_PointHover(currentOver,objects.eq(nextIndex).find("img"))});$("#imgright").bind("click",function(){var nextIndex=parseInt(currentIndex)+1;if(nextIndex>=objects.length)nextIndex=0;currentOver=_PointHover(currentOver,objects.eq(nextIndex).find("img"))});$(document).keydown(function(e){e=e||event;if(e.keyCode==37){$("#imgleft").click();return false};if(e.keyCode==39){$("#imgright").click();return false}})};function _PointHover(overObj,Obj){$("#imgDis_small li").find("a").removeClass("selectd");overObj=Obj.parent("a").addClass("selectd");_LoadHdImage(Obj.attr("imgid"));var selectedIndex=parseInt(overObj.find("img").attr("imgid"))+1;var pevNum=selectedIndex-pageIndex;return overObj};function _LoadHdImage(imgIndex){$("#imgDis_large img:visible").hide();currentIndex=imgIndex;if($("#imgDis_large img[imgid='"+imgIndex+"']").length==0){$("#imgDis_large").append("<img imgid=\""+imgIndex+"\" src=\"http://p.www.xiaomi.com/images/grey.gif\" style=\"display:none;\"/>");var imgout=$("#imgDis_large img[imgid='"+imgIndex+"']");var imgalt=$("#d_nav>h1").text();var img=new Image();img.src=largeImg_Array[imgIndex];if(img.complete){imgout.attr({"src":img.src,"alt":imgalt});if(currentIndex==imgIndex)imgout.show()}else{img.onload=function(){imgout.attr({"src":img.src,"alt":imgalt});if(currentIndex==imgIndex)imgout.show()}}}else{$("#imgDis_large img").stop(false,true).hide();$("#imgDis_large img[imgid='"+imgIndex+"']").show()}};return{Init:function(){_Init();return this},largeImg:function(imgslist){largeImg_Array=imgslist;return this}}})();Xmeb.Page.xmSlider=function(option){var settings={defObj:null,controls:"controls",previd:"prevBtn",nextid:"nextBtn",speed:200,scollNum:6,auto:false,cellWidth:70,cellHeight:70};settings=$.extend(settings,option||{});var n=dis=0,cellLens=settings.defObj.find("li").length,overLens=cellLens-settings.scollNum;var animateCell=function(dir){settings.defObj.find("ul").animate({"marginTop":dis},settings.speed,function(){});if(overLens>0){$("#"+settings.controls).find("a").removeClass("moveOn");if(0<=n&&n<=(overLens-1)){$("#"+settings.nextid).find("a").addClass("moveOn");}
if(0<n&&n<=overLens){$("#"+settings.previd).find("a").addClass("moveOn");}}};var defaults=function(dir){var cellHeight=cellLens*settings.cellHeight,boxHeight=(settings.cellHeight*settings.scollNum)+10;settings.defObj.find("ul").height(cellHeight);var controls='<p id="'+settings.controls+'"> <span id="'+settings.previd+'"><a href="javascript:void(0);">Previous</a></span> <span id="'+settings.nextid+'"><a href="javascript:void(0);">Next</a></span></p>';settings.defObj.height(boxHeight).parent().append(controls);if(overLens>0){$("#"+settings.nextid).find("a").addClass("moveOn");}
$("#"+settings.nextid).find("a").bind("click",function(){if(overLens>0&&n<=(overLens-1)){n+=1;dis=-settings.cellWidth*n;animateCell();}})
$("#"+settings.previd).find("a").bind("click",function(){if(overLens>0&&n>=1&&n<=overLens){n-=1;dis+=settings.cellWidth;animateCell();}})};defaults();};$(function(){Xmeb.Page.imgShow.Init()})})();var largeImgArr=new Array();var largeItems=$("#imgDis_small").find("li");for(var i=0;i<largeItems.length;i++){largeImgArr[i]=largeItems.eq(i).find("a").attr("href")}Xmeb.Page.imgShow.largeImg(largeImgArr);Xmeb.Page.xmSlider({defObj:$("#proCon_slider"),scollNum:9});
</script>
</div>
		 <!-- header -->
            <div class="promise">
                <ul>
                    <li class="pr1"><a href="#">7天退货保障</a></li>
                    <li class="pr2"><a href="#">15天换货承诺</a></li>
                    <li class="pr3"><a href="#">200元起在线支付包邮</a></li>
                    <li class="pr4"><a href="#">340余家售后服务点</a></li>
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
		</div>
    </body>
   