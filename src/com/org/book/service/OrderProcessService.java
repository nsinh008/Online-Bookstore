package com.org.book.service;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.org.book.cart.Cart;
import com.org.book.cart.CartItem;
import com.org.book.dao.AddressDAO;
import com.org.book.dao.BookDAO;
import com.org.book.dao.PoitemDAO;
import com.org.book.dao.PurchaseOrderDAO;
import com.org.book.dao.UserDAO;
import com.org.book.model.Address;
import com.org.book.model.Book;
import com.org.book.model.PurchaseOrder;
import com.org.book.model.User;

@Path("/OrderProcess")
public class OrderProcessService {

	@GET
	@Path("/registerUser")
	@Produces(MediaType.APPLICATION_JSON)
	public User registerUser(@QueryParam("fname") String fname, @QueryParam("lname") String lname,
			@QueryParam("pwd") String pwd, @QueryParam("email") String email,
			@QueryParam("street") String street, @QueryParam("city") String city,@QueryParam("province") String province,
			@QueryParam("country") String country, @QueryParam("zip") String zip, @QueryParam("phone") String phone) 
	{

		UserDAO userdao = new UserDAO();
		User user,newUser;
		AddressDAO addressdao = new AddressDAO();
		boolean result = false;
		
		//Check if the user if the same email id exists or not
		user = userdao.getUserDetails(email);
		
		if(user == null)
		{
			//Add the user details into the DB through userDAO
			result = userdao.addUserDetails(fname, lname, pwd, email);

			//Check if the user details are added successfully
			if (result == true) {
				//Get the customerid(Primary key) from the user table
				newUser = userdao.getUserDetails(email);

				//Add the address details for the corresponding user(customerid) to the address table
				@SuppressWarnings("null")
				boolean addResult = addressdao.addAddressDetails(newUser.getCustomerid(), street, city, province, country, zip, phone);
				if (addResult == true) {
					return newUser;
				}
			} else
				return null;
		}
		else
		{
			//Customer with the same email ID already exists
			return null;
		}
		return null;
		

	}


	@GET
	@Path("/isValidUser")
	@Produces(MediaType.APPLICATION_JSON)
	public User validateUser(@QueryParam("email") String email) {
		System.out.println("In validateUser service");
		UserDAO userdao = new UserDAO();
		User user = userdao.getUserDetails(email);
		return user;
	}


	int customerid;
	String[] status = new String[] { "ORDERED", "DENIED", "CREATED" };

	@GET
	@Path("/order")
	@Produces(MediaType.APPLICATION_JSON)
	public PurchaseOrder orderIt(@QueryParam(value = "customerid") String customerid, @QueryParam(value = "cart_total") double cartTotal) {
		AddressDAO addressdao = new AddressDAO();
		PurchaseOrderDAO purchaseorderdao = new PurchaseOrderDAO();

		//Get Address to display in order details
		Address customerAddr = addressdao.getAddressDetails(customerid);

		double shipping = 10.50; //Standard shipping
		double taxAmt = cartTotal * 0.13; //13% Tax  

		double grandTotal = shipping + taxAmt + cartTotal;

		//Create an order in Purchase order table
		PurchaseOrder PO = purchaseorderdao.addPurchaseOrderDetails(status[2] ,customerid, customerAddr.getId(), grandTotal);
		PO.setAddr(customerAddr);
		return PO;
	}

	@PUT
	@Path("/confirmOrder/{POID}")
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.APPLICATION_JSON)
	public Boolean placeorder(@PathParam("POID") int POID, List<CartItem> cart) {

		PoitemDAO poitemdao = new PoitemDAO();
		PurchaseOrderDAO purchaseorderdao = new PurchaseOrderDAO();
		boolean done = false;

		//check if the entry in Purchase Order table is multiples of 5
		long count = purchaseorderdao.getCountOfPurchaseOrder();
		if((count % 5) == 0) {
			//5th entry in table PurchaseOrder, deny the order
			purchaseorderdao.setPurcahseOrderStatus(POID, status[1]);
		}
		//not the 5th entry, confirm the order
		else {
			for(CartItem cartitem : cart) {
				int bookid = cartitem.getBookid();
				int price = cartitem.getPrice();
				int quantity = cartitem.getQuantity();
				done = poitemdao.addPoitemDetails(POID, bookid, price, quantity);
				System.out.println("Confirm adding of book from cart to db " + done);
			}
			if(done == true) {
				purchaseorderdao.setPurcahseOrderStatus(POID, status[0]);
			}
		}
		return done;
	}


}