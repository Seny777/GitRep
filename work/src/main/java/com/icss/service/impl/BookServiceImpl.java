package com.icss.service.impl;

import com.icss.dao.BookDao;
import com.icss.entity.Book;
import com.icss.entity.BookVo;
import com.icss.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;
	@Override
	public List<BookVo> findAllBook(Map<String, Object> map) {
		return bookDao.findAllBook(map);
	}

	@Override
	public int addBook(Book book) {
		return bookDao.addBook(book);
	}

	@Override
	public int deleteBook(String bids) {
		return bookDao.deleteBook(bids);
	}

	@Override
	public int updateBook(Book book) {
		return bookDao.updateBook(book);
	}

	@Override
	public Book findBookById(Integer bid) {
		return bookDao.findBookById(bid);
	}
}
