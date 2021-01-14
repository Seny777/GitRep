package com.icss.dao;

import com.icss.entity.WebVo;
import com.icss.entity.Website;

import java.util.List;
import java.util.Map;

public interface WebsiteMapper {
  List<WebVo> findWebsite(Map<String,String> map);

  int addWeb(Website website);

  int delWeb(Integer id);

  int visit(Integer id);

  Website selById(Integer id);
}