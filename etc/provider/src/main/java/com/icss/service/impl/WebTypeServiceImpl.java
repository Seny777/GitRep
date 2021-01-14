package com.icss.service.impl;

import com.icss.dao.WebsiteTypeMapper;
import com.icss.entity.WebsiteType;
import com.icss.service.WebTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WebTypeServiceImpl implements WebTypeService {
	@Autowired
	private WebsiteTypeMapper websiteTypeMapper;
	@Override
	public List<WebsiteType> findAllWebType() {
		return websiteTypeMapper.findAllWebType();
	}
}
