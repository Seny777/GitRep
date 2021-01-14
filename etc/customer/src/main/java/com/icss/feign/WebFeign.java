package com.icss.feign;


import com.github.pagehelper.PageInfo;
import com.icss.entity.User;
import com.icss.entity.WebVo;
import com.icss.entity.Website;
import com.icss.entity.WebsiteType;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Map;

@FeignClient(name = "gateway",fallback = WebFeignImpl.class)
public interface WebFeign {
	@PostMapping("api/findWebVo")
	PageInfo<WebVo> findWebVo(Map<String,Object> map);
	@PostMapping("api/delWeb")
	boolean delWeb(Integer wid);
	@PostMapping("api/addWeb")
	boolean addWeb(Website website);
	@GetMapping("api/findUser")
	List<User> findUser();
	@GetMapping("api/findWebType")
	List<WebsiteType> findWebType();
	@PostMapping("api/visit")
	void visit(Integer wid);

}
