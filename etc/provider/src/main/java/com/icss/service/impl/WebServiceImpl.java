package com.icss.service.impl;

import com.icss.dao.UserMapper;
import com.icss.dao.WebsiteMapper;
import com.icss.dao.WebsiteTypeMapper;
import com.icss.entity.WebVo;
import com.icss.entity.Website;
import com.icss.entity.WebsiteType;
import com.icss.service.WebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class WebServiceImpl implements WebService {
	@Autowired
	private WebsiteMapper websiteMapper;
	@Autowired
	private WebsiteTypeMapper websiteTypeMapper;
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<WebVo> findWebsite(Map<String,String> map) {
		return websiteMapper.findWebsite(map);
	}

	@Override
	@Transactional
	public int addWeb(Website website) {
		int x=websiteMapper.addWeb(website);
		if(x>0){
			int y=userMapper.addNum(website.getCreateUserId());
			if(y>0){
				return websiteTypeMapper.addNum(website.getTypeId());
			}
			return 0;
		}
		return 0;
	}

	@Override
	@Transactional
	public int delWeb(Integer wid) {
		int x=websiteMapper.delWeb(wid);
		Website website=websiteMapper.selById(wid);
		if(x>0){
			int y=userMapper.delNum(website.getCreateUserId());
			if(y>0){
				return websiteTypeMapper.delNum(website.getTypeId());
			}
			return 0;
		}
		return 0;
	}

	@Override
	public int visit(Integer id) {
		return visit(id);
	}
}
