package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Phone entity. @author MyEclipse Persistence Tools
 */

public class Phone implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer sort;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Phone() {
	}

	/** minimal constructor */
	public Phone(Integer sort) {
		this.sort = sort;
	}

	/** full constructor */
	public Phone(Integer sort, Set products) {
		this.sort = sort;
		this.products = products;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}