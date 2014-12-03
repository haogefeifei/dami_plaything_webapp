package com.demo.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.demo.entity.Product;
import com.demo.service.ProServiceInf;
import com.opensymphony.xwork2.ActionContext;

@Controller("ProAction")
public class ProAction {
	@Resource(name="ProServiceImpl")
	private ProServiceInf service;
/*	private Product p;*/
	public ProServiceInf getService() {
		return service;
	}

	public void setService(ProServiceInf service) {
		this.service = service;
	}
	private Product product;
	
	public Product getProduct() {
		return product;
	}

/*	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}*/

	public void setProduct(Product product) {
		this.product = product;
	}

	/**
	 * 把商品的状态改为“0”
	 * 
	 * */
	public String updateZero() throws Exception{
		Product pou=service.findProductid(product.getPsid());
		pou.setPstatus("0");
		service.updateProduct(pou);
		return "zero";
	}
	/**
	 * 把商品的状态改为“1”
	 * 
	 * */
	public String updateOne() throws Exception{
		Product pou=service.findProductid(product.getPsid());
		pou.setPstatus("1");
//		System.out.println(pou.getPstatus());
		service.updateProduct(pou);
		return "one";
	}
	/**
	 * 根据ID查找相关的商品信息
	 * 
	 * */
	public String findProduct(){
		ActionContext.getContext().put("fpid", service.findProductId(product));
		ActionContext.getContext().put("qsort", service.queryPsort());
		return "fid";
	}
	/**
	 * 修改商品的信息
	 * 
	 * */
	public String updateProductmsg(){
//		System.out.println(product.getPsort().getId());
		service.updateProductmsg(product);
		return "udmsg";
	}
}
