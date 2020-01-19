package com.org.book.dao;

import java.io.File;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateConnection {

	private static SessionFactory sessionFactory = buildSessionFactory();
  
    private static SessionFactory buildSessionFactory()
    {
        try
        {
        	Configuration  configuration = new Configuration ().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
			
			return configuration.buildSessionFactory(builder.build());
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
		
    }
  
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public static Session getSession() {
        return sessionFactory.openSession();
    }
    
    public static void endTransaction(Transaction t)
    {
    	t.commit();
    }
    public static void closeSessionFactory() {
        // Close caches and connection pools
        getSessionFactory().close();
    }
    
}
