package com.org.book.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.book.cart.Cart;
import com.org.book.cart.CartItem;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/Cart")
public class CartControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private double calculateTotalPrice(Cart cart) {
		
		double TotalPrice = 0;
		List<CartItem> ci = cart.getBookcart();
		for(CartItem c: ci) {
			TotalPrice += c.getPrice() * c.getQuantity();
		}
		return TotalPrice;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		String op = request.getParameter("operation");
		
		HttpSession session = request.getSession(true);
		
		Cart cart;
		Cart session_cart = (Cart) session.getAttribute("items_in_cart");
		
		//Add to Cart
		if("add".equals(op)) {
			if(session_cart == null) {
				cart = new Cart();
			} else {
				cart = session_cart;
			}
			
			int flag = 0;
			List<CartItem> cartitems = cart.getBookcart();
			for(CartItem ci: cartitems) {
				String bid = request.getParameter("bookid");
				int bookid = Integer.parseInt(bid);
				//Book is already in cart
				if(ci.getBookid() == bookid) {
					//Add 1 to the quantity
					ci.setQuantity(ci.getQuantity() + 1);
					flag = 1;
				}
			}
			//if bookid not found in Cart, add 1 book with that bookid in cart
			if(flag == 0) {
				String title = request.getParameter("title");
				String author = request.getParameter("author");
				String p = request.getParameter("price");
				int price = Integer.parseInt(p);
				String bid = request.getParameter("bookid");
				int bookid = Integer.parseInt(bid);
				String image = request.getParameter("image");
				
				
				CartItem ci = new CartItem();
				ci.setAuthor(author);
				ci.setBookid(bookid);
				ci.setPrice(price);
				ci.setQuantity(1);
				ci.setTitle(title);
				ci.setImage(image);
				cart.addBookToCart(ci); 
			}
			
			//Set the total price of the cart
			cart.setTotalPrice(calculateTotalPrice(cart));
			
			session.setAttribute("items_in_cart", cart);
		}
				
//		HttpSession s1 = request.getSession();
//		Cart c1 = (Cart) s1.getAttribute("items_in_cart");
//		List<CartItem> c2 = c1.getBookcart();
//		for(CartItem ci: c2) {
//			System.out.println(ci.getAuthor());
//		}
		
		
		//Delete from Cart
		if("remove".equals(op)) {
			String bid = request.getParameter("bookid");
			int bookid = Integer.parseInt(bid);
			List<CartItem> cartitems = session_cart.getBookcart();
			
			CartItem remove_item = null;
			for(CartItem ci: cartitems) {
				//check if bookid to be deleted is in the cart
				if(ci.getBookid() == bookid) {
					//if yes, reduce the quantity by 1
					ci.setQuantity(ci.getQuantity() - 1);
				}
				//if quantity gets to 0, remove the book from cart
				if(ci.getQuantity() == 0) {
					remove_item = ci;
				}
			}
			Boolean result = session_cart.deleteBookFromCart(remove_item);
			//Set the total price of the cart
			session_cart.setTotalPrice(calculateTotalPrice(session_cart));
			if(result == true) {
				session.setAttribute("items_in_cart", session_cart);
			}
		}
		
		response.sendRedirect("viewcart.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
