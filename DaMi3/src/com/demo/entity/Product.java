package com.demo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Integer psid;
	private Phone phone;
	private Psort psort;
	private String pname;
	private String pnameid;
	private String pselect;
	private String pxx;
	private String pinfo;
	private String price;
	private String pmoblie;
	private String pmessage;
	private String pnorms;
	private String pimg;
	private String pimgbig;
	private String pimgmiddle;
	private String pimgsmall;
	private String pstatus;
	private Integer ptotal;
	private Integer pstock;
	private Set<Indentproduct> indentproducts = new HashSet<Indentproduct>(0);
	public Integer getPsid() {
		return psid;
	}
	public void setPsid(Integer psid) {
		this.psid = psid;
	}
	public Phone getPhone() {
		return phone;
	}
	public void setPhone(Phone phone) {
		this.phone = phone;
	}
	public Psort getPsort() {
		return psort;
	}
	public void setPsort(Psort psort) {
		this.psort = psort;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPnameid() {
		return pnameid;
	}
	public void setPnameid(String pnameid) {
		this.pnameid = pnameid;
	}
	public String getPselect() {
		return pselect;
	}
	public void setPselect(String pselect) {
		this.pselect = pselect;
	}
	public String getPxx() {
		return pxx;
	}
	public void setPxx(String pxx) {
		this.pxx = pxx;
	}
	public String getPinfo() {
		return pinfo;
	}
	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPmoblie() {
		return pmoblie;
	}
	public void setPmoblie(String pmoblie) {
		this.pmoblie = pmoblie;
	}
	public String getPmessage() {
		return pmessage;
	}
	public void setPmessage(String pmessage) {
		this.pmessage = pmessage;
	}
	public String getPnorms() {
		return pnorms;
	}
	public void setPnorms(String pnorms) {
		this.pnorms = pnorms;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getPimgbig() {
		return pimgbig;
	}
	public void setPimgbig(String pimgbig) {
		this.pimgbig = pimgbig;
	}
	public String getPimgmiddle() {
		return pimgmiddle;
	}
	public void setPimgmiddle(String pimgmiddle) {
		this.pimgmiddle = pimgmiddle;
	}
	public String getPimgsmall() {
		return pimgsmall;
	}
	public void setPimgsmall(String pimgsmall) {
		this.pimgsmall = pimgsmall;
	}
	public String getPstatus() {
		return pstatus;
	}
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	public Integer getPtotal() {
		return ptotal;
	}
	public void setPtotal(Integer ptotal) {
		this.ptotal = ptotal;
	}
	public Integer getPstock() {
		return pstock;
	}
	public void setPstock(Integer pstock) {
		this.pstock = pstock;
	}
	public Set getIndentproducts() {
		return indentproducts;
	}
	public void setIndentproducts(Set indentproducts) {
		this.indentproducts = indentproducts;
	}

	
}