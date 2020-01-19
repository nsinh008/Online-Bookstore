package com.org.book.dao;

import java.util.Random;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.org.book.model.User;

/**
 * Contains the Implementation of the UserDAO interface The class facilitates in
 * adding and retrieving the user details from the database
 */
public class UserDAO implements UserDAOInterface {

	/**
	 * Method to add the customer details into the database through queries in
	 * user.hbm.xml file
	 * 
	 * @param fname
	 * @param lname
	 * @param pwd
	 * @param email
	 * @param street
	 * @param city
	 * @param province
	 * @param country
	 * @param zip
	 * @param phone
	 * @return
	 */
	public boolean addUserDetails(String fname, String lname, String pwd, String email) {
		try {

			// Create a user and address object
			User user = new User();

			// Setting the values to be added to user table
			user.setFname(fname);
			user.setLname(lname);
			user.setPwd(pwd);
			user.setEmail(email);

			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			session.save(user);

			HibernateConnection.endTransaction(transaction);

			return true;
		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			System.out.println("error");
			return false;
		}
	}

	/**
	 * Method to get the user details based on the email address
	 * 
	 * @param email
	 * @return
	 */
	public User getUserDetails(String email) {
		try {

			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			Query query = session.getNamedQuery("findUserByEmail").setString("email", email);
			@SuppressWarnings("unchecked")
			User user = (User) query.uniqueResult();

			HibernateConnection.endTransaction(transaction);

			return user;
		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			// e.printStackTrace();
			System.out.println("error");
			return null;
		}

	}

}