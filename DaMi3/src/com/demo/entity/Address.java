package com.demo.entity;

/**
 * Address entity. @author MyEclipse Persistence Tools
 */

public class Address implements java.io.Serializable {

	// Fields

	private Integer addressid;
	private Loginuser loginuser;
	private String addressname;
	private String addressadd;
	private String zipcode;
	private String telnumber;

	// Constructors

	/** default constructor */
	public Address() {
	}

	/** full constructor */
	public Address(Loginuser loginuser, String addressname, String addressadd,
			String zipcode, String telnumber) {
		this.loginuser = loginuser;
		this.addressname = addressname;
		this.addressadd = addressadd;
		this.zipcode = zipcode;
		this.telnumber = telnumber;
	}

	// Property accessors

	public Integer getAddressid() {
		return this.addressid;
	}

	public void setAddressid(Integer addressid) {
		this.addressid = addressid;
	}

	public Loginuser getLoginuser() {
		return this.loginuser;
	}

	public void setLoginuser(Loginuser loginuser) {
		this.loginuser = loginuser;
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

}