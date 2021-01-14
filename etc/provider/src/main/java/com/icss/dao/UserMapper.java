package com.icss.dao;

import com.icss.entity.User;

import java.util.List;

public interface UserMapper {
   int addNum(Integer id);

	int delNum(Integer id);

	List<User> findAllUser();
}