package com.demo.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Indent entity. @author MyEclipse Persistence Tools
 */

public class Indent implements java.io.Serializable {

	// Fields

	private Integer id;
	private Loginuser loginuser;
	private String totalprices;
	private String addressname;
	private String addressadd;
	private String zipcode;
	private String telnumber;
	private Timestamp time;
	private Integer info;
	private Set indentproducts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Indent() {
	}

	/** minimal constructor */
	public Indent(Loginuser loginuser, String totalprices, String addressname,
			String addressadd, String zipcode, String telnumber) {
		this.loginuser = loginuser;
		this.totalprices = totalprices;
		this.addressname = addressname;
		this.addressadd = addressadd;
		this.zipcode = zipcode;
		this.telnumber = telnumber;
	}

	/** full constructor */
	public Indent(Loginuser loginuser, String totalprices, String addressname,
			String addressadd, String zipcode, String telnumber,
			Timestamp time, Integer info, Set indentproducts) {
		this.loginuser = loginuser;
		this.totalprices = totalprices;
		this.addressname = addressname;
		this.addressadd = addressadd;
		this.zipcode = zipcode;
		this.telnumber = telnumber;
		this.time = time;
		this.info = info;
		this.indentproducts = indentproducts;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Loginuser getLoginuser() {
		return this.loginuser;
	}

	public void setLoginuser(Loginuser loginuser) {
		this.loginuser = loginuser;
	}

	public String getTotalprices() {
		return this.totalprices;
	}

	public void setTotalprices(String totalprices) {
		this.totalprices = totalprices;
	}

	public String getAddressname() {
		return this.addressname;
	}

	public void setAddressname(String addressname) {
		this.addressname = addressname;
	}

	public String getAddressadd() {
		return this.addressadd;
	}

	public void setAddressadd(String addressadd) {
		this.addressadd = addressadd;
	}

	public String getZipcode() {
		return this.zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getTelnumber() {
		return this.telnumber;
	}

	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getInfo() {
		return this.info;
	}

	public void setInfo(Integer info) {
		this.info = info;
	}

	public Set getIndentproducts() {
		return this.indentproducts;
	}

	public void setIndentproducts(Set indentproducts) {
		this.indentproducts = indentproducts;
	}

}