package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * CartItem entity. @author MyEclipse Persistence Tools
 */

public class CartItem implements java.io.Serializable {

	// Fields

	private Integer id;
	private Product product;
	private String uniqueprice;
	private String pcount;
	private Set shopcarts = new HashSet(0);

	// Constructors

	/** default constructor */
	public CartItem() {
	}

	/** minimal constructor */
	public CartItem(String uniqueprice, String pcount) {
		this.uniqueprice = uniqueprice;
		this.pcount = pcount;
	}

	/** full constructor */
	public CartItem(Product product, String uniqueprice, String pcount,
			Set shopcarts) {
		this.product = product;
		this.uniqueprice = uniqueprice;
		this.pcount = pcount;
		this.shopcarts = shopcarts;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getUniqueprice() {
		return this.uniqueprice;
	}

	public void setUniqueprice(String uniqueprice) {
		this.uniqueprice = uniqueprice;
	}

	public String getPcount() {
		return this.pcount;
	}

	public void setPcount(String pcount) {
		this.pcount = pcount;
	}

	public Set getShopcarts() {
		return this.shopcarts;
	}

	public void setShopcarts(Set shopcarts) {
		this.shopcarts = shopcarts;
	}

}