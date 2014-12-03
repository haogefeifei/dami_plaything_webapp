<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<LINK rel=stylesheet type=text/css href="css/css2.css">
 <link href="img/login/logo.ico" rel="shortcut icon" />
        <link rel="stylesheet" type="text/css" href="img/index_files/index000.css" />
<title>大米网 - 大米手机官网 官方论坛 大米手机及原装配件唯一在线销售渠道-首页</title>
        <meta name="description" content="小米手机是小米公司发布的中国首款双核1.5GHz、高性能发烧级智能手机。小米手机零售价格是1999元，10月日正式上市，主要针对手机发烧友，采用线上销售模式。" />
        <meta name="keywords" content="小米手机,智能手机,android,小米公司" />
        
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
    </head>

<body>
       
    
		<div>
		  
				<div class="reg" id="regArea">
			     <jsp:include page="UesrInfo.jsp"/>
			    
               </div>
                    
          <div id="page" class="container">
            <div id="header">
                <h1 class="logo"><a title="小米手机官网" href="index.jsp">小米手机官网</a></h1>
                <div class="menu">
                    <ul id="mainMenu_top">
                        <li class="m1"><a class="T_home on " href="index.jsp"><span>首页</span></a></li>
                        <li class="m2"><a class="T_mione " href="DaMiInfo.jsp"><span>小米手机</span></a></li>
                        <li class="m3"><a class="T_accessories " href="peijian"><span>原装配件</span></a></li>
                        <li class="m4"><a class="T_download " href="xiazai.jsp"  ><span>下载专区</span></a></li>
                        <li class="m5"><a class="T_service " href=""  ><span>服务支持</span></a></li>
                        <li class="m6"><a class="T_forum" href="" target="_blank"><span>用户论坛</span></a></li>
                        <li class="m7"><a class="T_miui" href="http://www.miui.com/" target="_blank"><span>MIUI</span></a></li>
                        <li class="m8"><a class="T_miliao" href="http://www.miliao.com/" target="_blank"><span>米聊</span></a></li>
                    </ul>
                </div>
                
                
            </div>
            
                <div id="center1">
                	<div><a href=""><span style="color:#CCC; font-size:18px;">自动服务</span></a><img src="image/bei1.png"/><a href=""><span style="color:#CCC; font-size:18px;">下载管理</span></a><img src="image/bei1.png"/><a href=""><span style="color:#CCC; font-size:18px;">帮助分类</span></a><img src="image/bei1.png"/><a href=""><span style="color:#CCC; font-size:20px; color:#F00;"><b>联系客服</b></span></a></div>
                </div>
                <div id="center2" style="background-image:url(image/qqq.png);width:980px; height:362px; margin-top:19px;">
                	<div style=" padding-top:124px; margin-left:255px;"><a href=""><a href=""><img src="image/bei4.png" width="100"/></a></div>
                </div>
              
                <div id="center3" style=" margin-top:8px;">
                	<div></div>
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
                        <dd><a href="http://weibo.com/xiaomikeji/" target="_blank">新浪微博@小米公司</a></dd>
                        <dd><a href="http://t.qq.com/xiaomikeji/" target="_blank">腾讯微博@小米</a></dd>
                    </dl>
                    <dl class="xmhome">
                        <dt>小米之家</dt>
                        <dd><a href="http://www.xiaomi.com/service/xiaomiclub">25家小米之家查询</a></dd>
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
                <p>&COPY;2012 <a href="http://order.xiaomi.com/" class="xiaomi_lnk">xiaomi.com</a> 京ICP证110507号 京ICP备10046444号 京公网安备1101085013号<a style="margin-left:20px" href="http://www.xiaomi.com/about" >关于小米</a><a href="http://www.xiaomi.com/about/jobs">小米招聘</a><a href="http://www.xiaomi.com/about/contact">联系我们</a>
                    <span>小米公司旗下网站：</span><a href="http://order.xiaomi.com/" class="xiaomi_lnk">小米网</a><a class="miui_lnk" href="http://www.miui.com/" target="_blank">MIUI</a><a class="miliao_lnk" href="http://www.miliao.com/" target="_blank">米聊</a></p>
            </div>
   	   </div>
   	   
    </div>
    <DIV id=xixi onmouseover=toBig() onmouseout=toSmall()>
<TABLE style="FLOAT: left" border=0 cellSpacing=0 cellPadding=0 width=157>
  <TBODY>
  <TR>
    <TD class=main_head height=39 vAlign=top>&nbsp;</TD></TR>
  <TR>
    <TD class=info vAlign=top>
      <TABLE class=qqtable border=0 cellSpacing=0 cellPadding=0 width=120 
      align=center>
        <TBODY>
        <TR>
          <TD align=middle><a href="http://www.syrck.com/" target="_blank"><img src="image/tu.png" border="0"/></a> </TD>
        </TR>
        <TR>
          <TD height=5></TD></TR>
        <TR>
          <TD height=30 align=middle><SPAN>在线客服:<BR><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=410463721&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:410463721:46" alt="点击这里联系客服人员" title="点击这里联系客服人员" /></a></SPAN></TD></TR>
        <TR>
          <TD height=30 align=middle><SPAN>在线客服:<BR><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=873811580&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:873811580:46" alt="点击这里联系客服人员" title="点击这里联系客服人员" /></a></SPAN></TD></TR>
        <TR>
          <TD height=5></TD></TR>
        <TR>
          <TD height=30 align=middle><SPAN>在线客服:<BR><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=410463721&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:410463721:46" alt="点击这里联系客服人员" title="点击这里联系客服人员" /></a></SPAN></TD>
        </TR>
        <TR>
         <TD height=30 align=middle><SPAN>在线客服:<BR><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=410463721&amp;site=qq&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:410463721:46" alt="点击这里联系客服人员" title="点击这里联系客服人员" /></a></SPAN></TD>
        </TR>
        <TR>
          <TD align=middle>
            <DIV class=qun><FONT 
            color=#9b9b9b>大米交流群</FONT><BR><SPAN><a target="_blank" href="http://qun.qq.com/#jointhegroup/gid/259354927"><img border="0" src="images/gp.png" alt="点击这里加入此群" title="点击这里加入此群"></a></SPAN></DIV></TD></TR>
        <TR>
          <TD align=middle>
            <DIV class=qun><FONT 
            color=#9b9b9b>收听大米微博</FONT><BR><SPAN><iframe src="http://follow.v.t.qq.com/index.php?c=follow&a=quick&name=syyjlyp&style=3&t=1348409168674&f=0" frameborder="0" scrolling="auto" width="65" height="20" marginwidth="0" marginheight="0" allowtransparency="true"></iframe></SPAN></DIV></TD></TR>
        <TR>
          <TD align=middle>&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class=down_kefu vAlign=top></TD></TR></TBODY></TABLE>
<DIV class=Obtn></DIV></DIV>
<SCRIPT language=javascript>
		客服果果=function (id,_top,_left){
		var me=id.charAt?document.getElementById(id):id, d1=document.body, d2=document.documentElement;
		d1.style.height=d2.style.height='100%';me.style.top=_top?_top+'px':0;me.style.left=_left+"px";//[(_left>0?'left':'left')]=_left?Math.abs(_left)+'px':0;
		me.style.position='absolute';
		setInterval(function (){me.style.top=parseInt(me.style.top)+(Math.max(d1.scrollTop,d2.scrollTop)+_top-parseInt(me.style.top))*0.1+'px';},10+parseInt(Math.random()*20));
		return arguments.callee;
		};
		window.onload=function (){
		客服果果
		('xixi',100,-152);
		}
	</SCRIPT>


<SCRIPT language=javascript> 
			lastScrollY=0; 
			
			var InterTime = 1;
			var maxWidth=-1;
			var minWidth=-152;
			var numInter = 8;
			
			var BigInter ;
			var SmallInter ;
			
			var o =  document.getElementById("xixi");
				var i = parseInt(o.style.left);
				function Big()
				{
					if(parseInt(o.style.left)<maxWidth)
					{
						i = parseInt(o.style.left);
						i += numInter;	
						o.style.left=i+"px";	
						if(i==maxWidth)
							clearInterval(BigInter);
					}
				}
				//打开对话
				function toBig()
				{
					clearInterval(SmallInter);
					clearInterval(BigInter);
						BigInter = setInterval(Big,InterTime);
				}
				function Small()
				{
					if(parseInt(o.style.left)>minWidth)
					{
						i = parseInt(o.style.left);
						i -= numInter;
						o.style.left=i+"px";
						
						if(i==minWidth)
							clearInterval(SmallInter);
					}
				}
				//登陆
				function toSmall()
				{
					clearInterval(SmallInter);
					clearInterval(BigInter);
					SmallInter = setInterval(Small,InterTime);
				}
								
</SCRIPT>
</body>
</html>