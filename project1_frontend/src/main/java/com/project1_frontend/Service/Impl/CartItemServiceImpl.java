package com.project1_frontend.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1_frontend.Dao.CartItemDao;
import com.project1_frontend.Service.CartItemService;
import com.project1_frontend.model.Cart;
import com.project1_frontend.model.CartItem;
import com.project1_frontend.model.CustomerOrder;

@Service
public class CartItemServiceImpl implements CartItemService{
	@Autowired
	private CartItemDao cartItemDao;
	public void saveOrUpdateCartItem(CartItem cartItem){
		cartItemDao.saveOrUpdateCartItem(cartItem);
	}
	public void removeCartItem(int cartItemId) {
		cartItemDao.removeCartItem(cartItemId);
		
	}
	public Cart getCart(int cartId) {
		
		return cartItemDao.getCart(cartId);
	}
	
	public CustomerOrder createOrder(Cart cart) {
	
		return cartItemDao.createOrder(cart);
	}
}