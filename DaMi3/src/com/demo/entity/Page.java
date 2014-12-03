package com.demo.entity;

public class Page {
	// 当前页
	private int pagenow;
	// 每页显示的记录数
	private int pagesize=10;
	// 总页数
	private int pageCount;
	// 总记录数
	private int rowsize;
	public int getPagenow() {
		return pagenow;
	}
	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int rowsize) {
		
		if(rowsize%this.pagesize==0){
			this.pageCount = rowsize/this.pagesize;	
		}else{
			this.pageCount = rowsize/this.pagesize+1;
		}
		
		
	}
	public int getRowsize() {
		return rowsize;
	}
	public void setRowsize(int rowsize) {
		this.rowsize = rowsize;
		//在获取了总记录数后，调用总页数的set方法，将总记录数传入进行计算
		this.setPageCount(rowsize);
	}

}
