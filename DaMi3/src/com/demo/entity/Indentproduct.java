package com.demo.entity;

/**
 * Indentproduct entity. @author MyEclipse Persistence Tools
 */

public class Indentproduct implements java.io.Serializable {

	// Fields

	private Integer shopid;
	private Product product;
	private Indent indent;
	private String price;
	private String number;

	// Constructors

	/** default constructor */
	public Indentproduct() {
	}

	/** full constructor */
	public Indentproduct(Product product, Indent indent, String price,
			String number) {
		this.product = product;
		this.indent = indent;
		this.price = price;
		this.number = number;
	}

	// Property accessors

	public Integer getShopid() {
		return this.shopid;
	}

	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Indent getIndent() {
		return this.indent;
	}

	public void setIndent(Indent indent) {
		this.indent = indent;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

}