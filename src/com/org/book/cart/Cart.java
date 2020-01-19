package com.org.book.cart;

import java.util.ArrayList;
import java.util.List;

public class Cart {

	private List<CartItem> bookcart;
	private double totalPrice;

	public Cart() {
		bookcart = new ArrayList<CartItem>();
	}

	public void addBookToCart(CartItem cartitem) {
		bookcart.add(cartitem);
	}
	
	public Boolean deleteBookFromCart(CartItem cartitem) {
		return bookcart.remove(cartitem);
	}

	public List<CartItem> getBookcart() {
		return bookcart;
	}

	public void setBookcart(List<CartItem> bookcart) {
		this.bookcart = bookcart;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}	
}
