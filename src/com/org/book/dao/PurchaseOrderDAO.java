package com.org.book.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.org.book.model.Poitem;
import com.org.book.model.PurchaseOrder;

public class PurchaseOrderDAO {

	public PurchaseOrder addPurchaseOrderDetails(String status, String customerid, int address, double amount ) {
		try {

			PurchaseOrder purchaseorder = new PurchaseOrder();
			purchaseorder.setStatus(status);
			purchaseorder.setAddress(address);
			Integer custId = Integer.parseInt(customerid);
			purchaseorder.setCustomerid(custId);
			purchaseorder.setAmount(amount);

			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			session.save(purchaseorder); 

			HibernateConnection.endTransaction(transaction);

			return purchaseorder;
		}
		catch(HibernateException e)
		{

			System.out.println(e.getMessage());
			System.out.println("error");
			return null;

		}

	}

	public PurchaseOrder getPurchaseOrderByPOID(int POID) {
		try
		{
			String purchaseorderid = Integer.toString(POID);
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();

			Query query = session.getNamedQuery("findPurchaseOrderByPOid").setString("poid", purchaseorderid);
			PurchaseOrder PO = (PurchaseOrder) query.uniqueResult();

			HibernateConnection.endTransaction(transaction);
			return PO;
		}
		catch(HibernateException e)
		{

			System.out.println(e.getMessage());
			return null;

		}
	}
	
	public int setPurcahseOrderStatus(int POID, String status) {
		try {
			String purchaseorderid = Integer.toString(POID);
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();
			
			int updated = session.getNamedQuery("updateStatusByPOID").setString("poid", purchaseorderid).setString("status", status).executeUpdate();
		
			HibernateConnection.endTransaction(transaction);
			return updated;
			
		}
		catch(HibernateException e)
		{
			System.out.println(e.getMessage());
			return 0;

		}

	}
	
	public long getCountOfPurchaseOrder() {
		try {
			Session session = HibernateConnection.getSession();
			Transaction transaction = session.beginTransaction();
			
			Query query = session.getNamedQuery("countRowsInPO");
			long count = (long) query.uniqueResult();
			
			return count;
			
		}
		catch(HibernateException e)
		{
			System.out.println(e.getMessage());
			return 0;

		}

	}
}
