package com.demo.service;

import java.util.List;

import com.demo.entity.Product;
import com.demo.entity.Psort;

public interface ProServiceInf {
	public Product findProductid(int psid);//查找商品ID
	public void updateProduct(Product p);//修改商品上下架的状态
	//根据ID查找相关的商品信息
	public Product findProductId(Product p);
	//修改商品信息
	public void updateProductmsg(Product p);
	//查找--商品表--的商品分类关联的--商品分类表--
	public List<Psort> queryPsort();
}
