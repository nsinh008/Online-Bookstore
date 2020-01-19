package com.org.book.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import com.org.book.model.Book;
import com.org.book.sslConfig.SslConfiguration2;


@WebServlet("/categoryviewservlet")
public class CategoryViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void userController(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String category = request.getParameter("Category");
		System.out.println(category);
		
		
		
		SslConfiguration2 sslconf= new SslConfiguration2();
    	Client client = sslconf.ssl();
    	
		WebTarget target = client.target("https://localhost:8443/OnlineBookStore/rest/ProductCatalog/getCategoryBooks")
				.path("/{category}").resolveTemplate("category", category);

		try {
			Invocation.Builder ib = target.request(MediaType.APPLICATION_JSON);
			Response res = ib.get();
			// copied from
			// "https://stackoverflow.com/questions/21918081/jersey-2-6-with-jackson-json-deserialization"
			// JSON deserialization
			List<Book> book = res.readEntity(new GenericType<List<Book>>() {
			});

			request.setAttribute("book", book);
			//request.getRequestDispatcher("response_old.jsp").forward(request, response);
			request.getRequestDispatcher("products.jsp").forward(request, response);

		    } 
		catch (Exception e) {
			e.printStackTrace();
		    }

		}
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userController(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userController(request, response);
	}
}