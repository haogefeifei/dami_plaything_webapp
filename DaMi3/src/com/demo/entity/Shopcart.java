package com.demo.entity;

import java.sql.Timestamp;

/**
 * Shopcart entity. @author MyEclipse Persistence Tools
 */

public class Shopcart implements java.io.Serializable {

	// Fields

	private Integer shopid;
	private CartItem cartItem;
	private Loginuser loginuser;
	private Integer shoppingcartStatus;
	private Timestamp createtime;

	// Constructors

	/** default constructor */
	public Shopcart() {
	}

	/** full constructor */
	public Shopcart(CartItem cartItem, Loginuser loginuser,
			Integer shoppingcartStatus, Timestamp createtime) {
		this.cartItem = cartItem;
		this.loginuser = loginuser;
		this.shoppingcartStatus = shoppingcartStatus;
		this.createtime = createtime;
	}

	// Property accessors

	public Integer getShopid() {
		return this.shopid;
	}

	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}

	public CartItem getCartItem() {
		return this.cartItem;
	}

	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}

	public Loginuser getLoginuser() {
		return this.loginuser;
	}

	public void setLoginuser(Loginuser loginuser) {
		this.loginuser = loginuser;
	}

	public Integer getShoppingcartStatus() {
		return this.shoppingcartStatus;
	}

	public void setShoppingcartStatus(Integer shoppingcartStatus) {
		this.shoppingcartStatus = shoppingcartStatus;
	}

	public Timestamp getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

}