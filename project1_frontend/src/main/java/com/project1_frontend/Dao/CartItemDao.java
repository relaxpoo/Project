package com.project1_frontend.Dao;

import com.project1_frontend.model.Cart;
import com.project1_frontend.model.CartItem;
import com.project1_frontend.model.CustomerOrder;

public interface CartItemDao {
void saveOrUpdateCartItem(CartItem cartItem);

void removeCartItem(int cartItemId);

Cart getCart(int cartId);

CustomerOrder createOrder(Cart cart);
}