package com.icss.service;

import com.icss.entity.Book;
import com.icss.entity.BookVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BookService {
	List<BookVo> findAllBook(Map<String,Object> map);

	int addBook(Book book);

	int deleteBook(String bids);

	int updateBook(Book book);

	Book findBookById(Integer bid);
}
