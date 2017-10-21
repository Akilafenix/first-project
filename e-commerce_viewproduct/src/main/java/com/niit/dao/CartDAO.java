package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDAO {
	
public void addcart(Cart cart);
	
	public List<Cart> getcartList(String username);

}
