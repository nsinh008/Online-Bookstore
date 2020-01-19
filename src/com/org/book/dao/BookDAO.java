package com.org.book.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.org.book.model.Book;
import com.org.book.dao.HibernateConnection;

public class BookDAO implements BookDAOInterface{
	/**
	 * A method to get the book details from the database based on the category
	 * The queries are referred from Book.hbm.xml file
	 * 
	 * @param Category
	 * @return List of all the books from the particular category
	 */
	public List<Book> getBookByCategory(String Category) {
		try {
			
			// 1. configuring hibernate
			//			Configuration configuration = new Configuration().configure();
			//			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
			//			SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
			//			Session session = sessionFactory.openSession();			
			// 4. Starting Transaction
			//			Transaction transaction = session.beginTransaction();
			
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			System.out.println(Category);
			Query query = session.getNamedQuery("findBookbyCategory").setString("cat", Category);
			@SuppressWarnings("unchecked")
			List<Book> book = query.list();

			HibernateConnection.endTransaction(transaction);
			return book;

		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return null;
	}

	public Book getBookById(String bookid) {
		try {
			
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			Query query = session.getNamedQuery("findBookbyId").setString("id", bookid);
			@SuppressWarnings("unchecked")
			Book book = (Book) query.uniqueResult();

			HibernateConnection.endTransaction(transaction);
			return book;

		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
		
	}
	
	public List<Book> getAllBook()
	{
		try {
			
			System.out.println("entered getallbook dao");
			// 1. configuring hibernate
			Configuration configuration = new Configuration().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
			SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
			Session session = sessionFactory.openSession();

			// 4. Starting Transaction
			Transaction transaction = session.beginTransaction();
			
			Query query = session.getNamedQuery("findAllBooks");
			@SuppressWarnings("unchecked")
			List<Book> booklist = query.list();
					
			transaction.commit();
			return booklist;

		} 
		catch (HibernateException e) 
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
		
		
	}
}
