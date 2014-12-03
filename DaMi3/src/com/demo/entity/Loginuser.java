package com.demo.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Loginuser entity. @author MyEclipse Persistence Tools
 */

public class Loginuser implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String usernickname;
	private String username;
	private String userpsw;
	private String usertel;
	private String usermail;
	private Integer usercode;
	private Timestamp usertime;
	private String sex;
	private String ip;
	private String loginip;
	private Set addresses = new HashSet(0);
	private Set indents = new HashSet(0);
	private Set shopcarts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Loginuser() {
	}

	/** minimal constructor */
	public Loginuser(String username, String userpsw) {
		this.username = username;
		this.userpsw = userpsw;
	}

	/** full constructor */
	public Loginuser(String usernickname, String username, String userpsw,
			String usertel, String usermail, Integer usercode,
			Timestamp usertime, String sex, String ip, String loginip,
			Set addresses, Set indents, Set shopcarts) {
		this.usernickname = usernickname;
		this.username = username;
		this.userpsw = userpsw;
		this.usertel = usertel;
		this.usermail = usermail;
		this.usercode = usercode;
		this.usertime = usertime;
		this.sex = sex;
		this.ip = ip;
		this.loginip = loginip;
		this.addresses = addresses;
		this.indents = indents;
		this.shopcarts = shopcarts;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsernickname() {
		return this.usernickname;
	}

	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpsw() {
		return this.userpsw;
	}

	public void setUserpsw(String userpsw) {
		this.userpsw = userpsw;
	}

	public String getUsertel() {
		return this.usertel;
	}

	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}

	public String getUsermail() {
		return this.usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public Integer getUsercode() {
		return this.usercode;
	}

	public void setUsercode(Integer usercode) {
		this.usercode = usercode;
	}

	public Timestamp getUsertime() {
		return this.usertime;
	}

	public void setUsertime(Timestamp usertime) {
		this.usertime = usertime;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getLoginip() {
		return this.loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public Set getAddresses() {
		return this.addresses;
	}

	public void setAddresses(Set addresses) {
		this.addresses = addresses;
	}

	public Set getIndents() {
		return this.indents;
	}

	public void setIndents(Set indents) {
		this.indents = indents;
	}

	public Set getShopcarts() {
		return this.shopcarts;
	}

	public void setShopcarts(Set shopcarts) {
		this.shopcarts = shopcarts;
	}

}