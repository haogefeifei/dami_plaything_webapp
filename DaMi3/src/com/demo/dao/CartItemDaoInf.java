package com.demo.dao;

import com.demo.entity.CartItem;

public interface CartItemDaoInf {
	
	/**
	 * 添加购物车明细
	 * @param cartitem
	 */
	public void addcartitem(CartItem cartitem);
	
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public CartItem getuniquecart(int id);
	
	/**
	 * 删除
	 * @param id
	 */
	public void delectCart(CartItem cartinfo);
	
	
}
