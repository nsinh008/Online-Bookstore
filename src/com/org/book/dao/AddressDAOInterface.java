package com.org.book.dao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import com.org.book.model.Address;

public interface AddressDAOInterface {

	public boolean addAddressDetails(int customerid,String street, String city, String province, String country,String zip, String phone);
	
	public Address getAddressDetails(String customerid);

}
