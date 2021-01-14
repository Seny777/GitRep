package com.icss.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.icss.entity.User;
import com.icss.entity.WebVo;
import com.icss.entity.Website;
import com.icss.entity.WebsiteType;
import com.icss.service.UserService;
import com.icss.service.WebService;
import com.icss.service.WebTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class WebController {
	@Autowired
	private UserService userService;
	@Autowired
	private WebService webService;
	@Autowired
	private WebTypeService webTypeService;

	@PostMapping("findWebVo")
		public PageInfo<WebVo> findWebVo(@RequestBody Map<String,Object> map){
			Map<String,String> map1=new HashMap<>();
			map1.put("wname",map.get("wname").toString());
			map1.put("uname",map.get("uname").toString());
			Integer pageNum=(Integer)map.get("pageNum");
			PageHelper.startPage(pageNum, 4);
			List<WebVo> webVoList=webService.findWebsite(map1);
			PageInfo<WebVo> page = new PageInfo<WebVo>(webVoList);
			return page;
		}
	@PostMapping("delWeb")
	public boolean delWeb(@RequestBody Integer wid){
		return webService.delWeb(wid)>0?true:false;
	}

	@PostMapping("addWeb")
	public boolean addWeb(@RequestBody Website website){
		return webService.addWeb(website)>0?true:false;
	}

	@GetMapping("findUser")
	public List<User> findUser(){
		return userService.findAllUser();
	}

	@GetMapping("findWebType")
	public List<WebsiteType> findWebType(){
		return webTypeService.findAllWebType();
	}

	@PostMapping("visit")
	public void visit(@RequestBody Integer id){
		webService.visit(id);
	}
}
