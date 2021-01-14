package com.icss.service;

import com.icss.entity.WebVo;
import com.icss.entity.Website;

import java.util.List;
import java.util.Map;

public interface WebService {
	List<WebVo> findWebsite(Map<String,String> map);

	int addWeb(Website website);

	int delWeb(Integer wid);

	int visit(Integer id);
}
