package com.demo.service;
import java.util.List;

import com.demo.entity.Loginuser;
import com.demo.entity.Product;
import com.demo.entity.Shopcart;

public interface ShopCartServiceInf {

	public void addShoppingCart(Shopcart cart);
	
	public List<Shopcart> getallCartsByuserid(int id);
	
	public void deleteShoppingcart(int spid);
	
	public Shopcart getuniqueSpByid(int id);
	
	public void modifyspStatus(Shopcart sp);
	
	public List<Shopcart> getallmy(int id);
	
	/**
	 * 查询购物车是否已经有类似商品
	 * @param u	用户
	 * @param p 商品
	 * @return
	 */
	public Shopcart findCartProduct(Loginuser u , Product p);
	
	/**
	 * 修改购物车里面的商品的数量
	 */
	public void setNum(Shopcart sc ,int num);
}
