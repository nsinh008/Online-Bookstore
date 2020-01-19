package com.org.book.dao;

import java.util.List;

import com.org.book.model.Poitem;

public interface PoitemDAOInterface {

	public boolean addPoitemDetails(int id, int bookid, int amount, int quantity);
	
	public List<Poitem> getPoitem(int id, int bookid);
}
