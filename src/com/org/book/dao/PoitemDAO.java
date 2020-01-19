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
import com.org.book.model.Poitem;
import com.org.book.model.PurchaseOrder;

public class PoitemDAO implements PoitemDAOInterface{

	
	public boolean addPoitemDetails(int id, int bookid, int amount, int quantity) {
		try {

			Poitem poitem = new Poitem();
			poitem.setId(id);
			poitem.setBookid(bookid);
			poitem.setPrice(amount);
			poitem.setQuantity(quantity);

			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();
			
			session.save(poitem); 
			
			HibernateConnection.endTransaction(transaction);

			return true;
		}
		catch(HibernateException e)
		{

			System.out.println(e.getMessage());
			System.out.println("error");
			return false;

		}

	}
	
	public List<Poitem> getPoitem(int id, int bookid)
	{
		try
		{
			String book_id = Integer.toString(bookid);
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();
			
				Query query = session.getNamedQuery("findPoitemByIdandBookid").setString("bookid", book_id).setInteger("id", id);
				@SuppressWarnings("unchecked")
				List<Poitem> poitem = query.list();
				for(Poitem p : poitem)
				{
					System.out.println(p);
				}

				HibernateConnection.endTransaction(transaction);
			return poitem;
		}
		catch(HibernateException e)
		{

			System.out.println(e.getMessage());
			System.out.println("error");
			return null;
		
		}
	}
}
