package com.org.book.dao;

import java.util.List;

import com.org.book.model.Book;

public interface BookDAOInterface {

	public List<Book> getBookByCategory(String Category);
	
	public Book getBookById(String bookid);
}
