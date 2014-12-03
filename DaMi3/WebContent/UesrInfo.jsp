<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
    
<s:if test="#session.u==null">
					<!-- 没有登录 -->
	 		
	 			<ul class="cfl">
							<li class="regArea_l">
								<a class="T_login" href="login.jsp">登录</a>								
								<a target="_blank" class="T_register" href="register.jsp">注册</a>								
								<a class="cart T_cart" href="shopcart">购物车<span id=""></span></a>
							</li>						
							<li class="regArea_r">
								<a style="color:#19B8F3;" href="#" target="_blank" class="reg_done">必看，购买大米手机的常见问题</a>
							</li>
						</ul>
	 		
	 </s:if>
 		<s:else>
					<!-- 登录成功了 -->	
 				<ul class="cfl">
					<li class="regArea_l">
						<span class="user"><s:property value="#session.u.usernickname" /></span>
						<a class="T_logout" href="exit">退出</a>
						<a class="T_order" href="mydingdan">我的订单</a>
						<a class="cart T_cart" href="shopcart">购物车
						
						<s:if test="#session.cart!=null">(<s:property value='#session.cart.size' />)</s:if>
						<s:else>(0)</s:else>
						
						</a>
					</li>	
					<li class="regArea_r">	
						<a style="color:#19B8F3;" href="#" target="_blank" class="reg_done">必看，购买大米手机的常见问题</a>
					</li>
				</ul>
 		</s:else>
					