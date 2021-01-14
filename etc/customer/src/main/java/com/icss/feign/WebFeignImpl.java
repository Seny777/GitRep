package com.icss.feign;


import com.github.pagehelper.PageInfo;
import com.icss.entity.User;
import com.icss.entity.WebVo;
import com.icss.entity.Website;
import com.icss.entity.WebsiteType;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public class WebFeignImpl implements WebFeign {

	@Override
	public PageInfo<WebVo> findWebVo(Map<String,Object> map) {
		return null;
	}

	@Override
	public boolean delWeb(Integer wid) {
		return false;
	}

	@Override
	public boolean addWeb(Website website) {
		return false;
	}

	@Override
	public List<User> findUser() {
		return null;
	}

	@Override
	public List<WebsiteType> findWebType() {
		return null;
	}

	@Override
	public void visit(Integer id) {}
}
