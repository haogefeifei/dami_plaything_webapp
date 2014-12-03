package com.demo.dao;

import java.util.List;

import com.demo.entity.Loginuser;
import com.demo.entity.Product;
import com.demo.entity.Shopcart;

public interface ShopCartDaoInf {
	
	/**
	 * 增加
	 * @param shopcart
	 */
	public void addShoppingCart(Shopcart shopcart);
	
	/**
	 * 根据用户id查询
	 * @param id
	 * @return
	 */
	public List<Shopcart> listallcartByUserid(int id);
	
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public List<Shopcart> listall(int id);
	
	/**
	 * 删除
	 * @param spid
	 */
	public void deleteShoppingCart(int spid);
	
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	public Shopcart getuniqueSpByid(int id);
	
	/**
	 * 修改购物车状态
	 * @param sp
	 */
	public void modifyspStatus(Shopcart sp);
	
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
	
	/**
	 * 清空购物车
	 */
	public void deleteAll(List<Shopcart> sp);
}
