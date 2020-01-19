package com.org.book.dao;

import com.org.book.model.User;

public interface UserDAOInterface {

	public boolean addUserDetails(String fname, String lname, String pwd, String email);
	
	public User getUserDetails(String email);
	
}
