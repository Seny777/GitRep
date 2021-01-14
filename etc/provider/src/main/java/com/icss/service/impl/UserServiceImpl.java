package com.icss.service.impl;

import com.icss.dao.UserMapper;
import com.icss.entity.User;
import com.icss.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> findAllUser() {
		return userMapper.findAllUser();
	}
}
