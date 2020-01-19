package com.org.book.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.org.book.model.Book;
import com.org.book.sslConfig.SslConfiguration2;

/**
 * Servlet implementation class ProductInfoServlet
 */
@WebServlet("/ProductInfoServlet")
public class ProductInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void ProductInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bid = request.getParameter("bookid");
		int bookid = Integer.parseInt(bid);
		System.out.println(bookid);
		
		SslConfiguration2 sslconf= new SslConfiguration2();
    	Client client = sslconf.ssl(); 
    	
		WebTarget target = client.target("https://localhost:8443/OnlineBookStore/rest/ProductCatalog/ProductInformation")
				.path("/{bookid}").resolveTemplate("bookid", bookid);

		try {
			Invocation.Builder ib = target.request(MediaType.APPLICATION_JSON);
			Response res = ib.get();
			
			Book book = res.readEntity(Book.class);
			
			request.setAttribute("book_details", book);
			request.getRequestDispatcher("product_info.jsp").forward(request, response);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ProductInformation(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		ProductInformation(request, response);
	}

}
