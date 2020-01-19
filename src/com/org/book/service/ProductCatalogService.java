package com.org.book.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.org.book.dao.BookDAO;
import com.org.book.model.Book;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("/ProductCatalog")
public class ProductCatalogService {

	/**
	 * Method handling HTTP GET requests. The returned object will be sent to the
	 * client as "text/plain" media type.
	 *
	 */
	@GET
	@Path("/getCategoryBooks/{category}")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Book> getIt(@PathParam("category") String category) {
		// public List<Book> getIt(@Context UriInfo info) {
		System.out.println("Enterned in Service");

		// String cat = info.getQueryParameters().getFirst("category");
		// System.out.println(cat);
		BookDAO book_dao = new BookDAO();
		List<Book> book = book_dao.getBookByCategory(category);

		System.out.println("In web Service");
		System.out.println(book);
		return book;

//		if (user != null) {
//			System.out.println("user object returned");
//			System.out.println(user.getFname() + " " + user.getLname());
//		}
//		return "Got it";
//
	}

	// Method to retrieve books in the cart from DB using the bookid
	@GET
	@Path("/ProductInformation/{bookid}")
	@Produces(MediaType.APPLICATION_JSON)
	public Book getBookInCart(@PathParam("bookid") String id) {

		BookDAO book_dao = new BookDAO();
		Book book = book_dao.getBookById(id);
		System.out.println(book);
		return book;

	}

	/**
	 * Method to get list of all books in database
	 * 
	 * @return
	 */
	@GET
	@Path("/getAllBooks")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Book> getAllBookList(){
		System.out.println("entered getallbooks service");
		BookDAO book_dao = new BookDAO();
		List<Book> book = book_dao.getAllBook();
		
		return book;
		
		
	}
	
	

}
