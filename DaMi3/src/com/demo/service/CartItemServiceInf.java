package com.demo.service;

import com.demo.entity.CartItem;

public interface CartItemServiceInf {

	public void addcartitem(CartItem cartitem);
	
	public CartItem getuniqueCartByproid(int id);
	
}
