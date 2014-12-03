package com.demo.entity;

/**
 * Master entity. @author MyEclipse Persistence Tools
 */

public class Master implements java.io.Serializable {

	// Fields

	private Integer masterid;
	private String mastername;
	private String masterpsw;
	private Integer adminkey;

	// Constructors

	/** default constructor */
	public Master() {
	}

	/** minimal constructor */
	public Master(String mastername, String masterpsw) {
		this.mastername = mastername;
		this.masterpsw = masterpsw;
	}

	/** full constructor */
	public Master(String mastername, String masterpsw, Integer adminkey) {
		this.mastername = mastername;
		this.masterpsw = masterpsw;
		this.adminkey = adminkey;
	}

	// Property accessors

	public Integer getMasterid() {
		return this.masterid;
	}

	public void setMasterid(Integer masterid) {
		this.masterid = masterid;
	}

	public String getMastername() {
		return this.mastername;
	}

	public void setMastername(String mastername) {
		this.mastername = mastername;
	}

	public String getMasterpsw() {
		return this.masterpsw;
	}

	public void setMasterpsw(String masterpsw) {
		this.masterpsw = masterpsw;
	}

	public Integer getAdminkey() {
		return this.adminkey;
	}

	public void setAdminkey(Integer adminkey) {
		this.adminkey = adminkey;
	}

}