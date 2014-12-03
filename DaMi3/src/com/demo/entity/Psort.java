package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Psort entity. @author MyEclipse Persistence Tools
 */

public class Psort implements java.io.Serializable {

	// Fields

	private Integer id;
	private String sort;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Psort() {
	}

	/** minimal constructor */
	public Psort(String sort) {
		this.sort = sort;
	}

	/** full constructor */
	public Psort(String sort, Set products) {
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

	public String getSort() {
		return this.sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}