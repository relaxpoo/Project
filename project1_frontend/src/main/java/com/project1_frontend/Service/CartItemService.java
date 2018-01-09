package com.project1_frontend.Service;

import com.project1_frontend.model.Cart;
import com.project1_frontend.model.CartItem;
import com.project1_frontend.model.CustomerOrder;

public interface CartItemService {
	
		void saveOrUpdateCartItem(CartItem cartItem);

		void removeCartItem(int cartItemId);

		Cart getCart(int cartId);
		
		CustomerOrder createOrder(Cart cart);
	}


