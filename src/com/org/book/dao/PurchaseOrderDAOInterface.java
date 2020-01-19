package com.org.book.dao;

import com.org.book.model.PurchaseOrder;

public interface PurchaseOrderDAOInterface {

	public int addPurchaseOrderDetails(String status, String customerid, int address, int amount );
	
	public PurchaseOrder getPurchaseOrderByPOID(String purchaseorderid);
	
	public boolean setPurcahseOrderStatus(String purchaseorderid, String status) ;
}
