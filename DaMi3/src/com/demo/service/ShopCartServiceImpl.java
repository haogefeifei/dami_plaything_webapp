package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.CartItemDaoInf;
import com.demo.dao.ShopCartDaoInf;
import com.demo.entity.Loginuser;
import com.demo.entity.Product;
import com.demo.entity.Shopcart;

@Service("ShopCartServiceImpl")
public class ShopCartServiceImpl implements ShopCartServiceInf {

	@Resource(name="ShopCartDaoImpl")
	private ShopCartDaoInf shoppingcartdao;
	@Resource(name="CartItemDaoImpl")
	private CartItemDaoInf cartItemdao;
	public ShopCartDaoInf getShoppingcartdao() {
		return shoppingcartdao;
	}
	public void setShoppingcartdao(ShopCartDaoInf shoppingcartdao) {
		this.shoppingcartdao = shoppingcartdao;
	}
	public CartItemDaoInf getCartItemdao() {
		return cartItemdao;
	}
	public void setCartItemdao(CartItemDaoInf cartItemdao) {
		this.cartItemdao = cartItemdao;
	}
	
	@Override
	public void addShoppingCart(Shopcart cart) {
		
		shoppingcartdao.addShoppingCart(cart);

	}

	@Override
	public List<Shopcart> getallCartsByuserid(int id) {
		
		List<Shopcart> shoppingcarts = shoppingcartdao.listallcartByUserid(id); 
		
		//获取一下属性值，这样做可以避免延迟加载所带来的错误
		//错误：could not initialize proxy - no Session
		//shoppingcarts.get(0).getCartItem().getProduct();
		shoppingcarts.getClass();
		
		return shoppingcarts;
	}

	@Override
	public void deleteShoppingcart(int spid) {
		
		Shopcart sp = shoppingcartdao.getuniqueSpByid(spid);
		shoppingcartdao.deleteShoppingCart(spid);
		
		cartItemdao.delectCart(sp.getCartItem());

	}

	@Override
	public Shopcart getuniqueSpByid(int id) {
		
		return shoppingcartdao.getuniqueSpByid(id);
	}

	@Override
	public void modifyspStatus(Shopcart sp) {
		
		shoppingcartdao.modifyspStatus(sp);

	}

	@Override
	public List<Shopcart> getallmy(int id) {
		
		return shoppingcartdao.listall(id);
	}
	@Override
	public Shopcart findCartProduct(Loginuser u, Product p) {
		
		return shoppingcartdao.findCartProduct(u, p);
	}
	@Override
	public void setNum(Shopcart sc, int num) {
		
		shoppingcartdao.setNum(sc, num);
		
	}



	

}
