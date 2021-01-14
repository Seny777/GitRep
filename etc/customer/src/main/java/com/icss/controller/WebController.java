package com.icss.controller;


import com.github.pagehelper.PageInfo;
import com.icss.entity.User;
import com.icss.entity.WebVo;
import com.icss.entity.Website;
import com.icss.entity.WebsiteType;
import com.icss.feign.WebFeign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class WebController {
    @Autowired
	private WebFeign webFeign;
    @RequestMapping("findWebVo")
	public String findAllStu(Model model,@RequestParam(value = "wname",defaultValue = "")String wname,
	 @RequestParam(value = "uname",defaultValue = "")String uname,@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum){
    	Map<String,Object> map=new HashMap<>();
    	map.put("wname",wname);
    	map.put("uname",uname);
    	map.put("pageNum",pageNum);
		PageInfo<WebVo> page=webFeign.findWebVo(map);
    	model.addAttribute("page",page);
    	model.addAttribute("map",map);
    	return "weblist";
	}

	@RequestMapping("toadd")
	public String toaddcourse(Model model){
		List<User> users=webFeign.findUser();
		List<WebsiteType> websiteTypes=webFeign.findWebType();
		model.addAttribute("users",users);
		model.addAttribute("wbt",websiteTypes);
		return "add";
    }

    @RequestMapping("add")
	@ResponseBody
	public boolean toadd(Model model,Website website){
    	return webFeign.addWeb(website);
	}

	@RequestMapping("del")
	@ResponseBody
	public boolean del(@RequestParam("wid")Integer wid){
		return webFeign.delWeb(wid);
	}

	@RequestMapping("visit")
	public void visit(@RequestParam("wid")Integer wid){
		webFeign.visit(wid);
	}

}
