package com.icss.dao;

import com.icss.entity.WebsiteType;

import java.util.List;

public interface WebsiteTypeMapper {
	List<WebsiteType> findAllWebType();

	int addNum(Integer id);

	int delNum(Integer id);
}