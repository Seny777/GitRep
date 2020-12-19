package com.icss.dao;

import com.icss.entity.Book;
import com.icss.entity.BookVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
@Mapper
public interface BookDao {
	List<BookVo> findAllBook(Map<String,Object> map);

	int addBook(Book book);

	int deleteBook(@Param("bids") String bids);

	int updateBook(Book book);

	Book findBookById(Integer bid);
}
