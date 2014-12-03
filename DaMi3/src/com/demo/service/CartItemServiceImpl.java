package com.demo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.CartItemDaoInf;
import com.demo.entity.CartItem;

@Service("CartItemServiceImpl")
public class CartItemServiceImpl implements CartItemServiceInf {

	@Resource(name="CartItemDaoImpl")
	private CartItemDaoInf cartitemdao;
	public CartItemDaoInf getCartitemdao() {
		return cartitemdao;
	}
	public void setCartitemdao(CartItemDaoInf cartitemdao) {
		this.cartitemdao = cartitemdao;
	}
	
	@Override
	public void addcartitem(CartItem cartitem) {
		
		cartitemdao.addcartitem(cartitem);

	}

	
	public CartItem getuniqueCartByproid(int id) {
		
		return cartitemdao.getuniquecart(id);
	}

	

}
