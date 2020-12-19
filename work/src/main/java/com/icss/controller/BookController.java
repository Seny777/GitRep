package com.icss.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.icss.entity.Book;
import com.icss.entity.BookVo;
import com.icss.entity.ResultInfo;
import com.icss.entity.Store;
import com.icss.service.BookService;
import com.icss.service.StoreService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	@Autowired
	private StoreService storeService;

	@RequestMapping("/findAllBook.do")
	public String findAllBook(Model model, @RequestParam(value = "bname", defaultValue = "") String bname, @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum){
		//写一个Map集合
		Map<String, Object> map = new HashMap<String, Object>();
		//把数据存放到map中
		map.put("bname", bname);
		map.put("pageNum", pageNum);
		//使用PageHelper实现分页
		PageHelper.startPage(pageNum, 4);
		List<BookVo> bookList = bookService.findAllBook(map);
		//写一个PageInfo对象
		PageInfo<BookVo> page = new PageInfo<BookVo>(bookList);
		model.addAttribute("page", page);
		model.addAttribute("map", map);
		return "bookList";
	}


	@RequestMapping("/updateBook.do")
	@ResponseBody
	public ResultInfo updateBook(Book book){
		int x=bookService.updateBook(book);
		return x>0?new ResultInfo("修改成功",true):new ResultInfo("修改失败",false);
	}


	@RequestMapping("/addBook.do")
	@ResponseBody
	public ResultInfo addBook(Book book){
		int x=bookService.addBook(book);
		return x>0?new ResultInfo("添加成功",true):new ResultInfo("添加失败",false);
	}


	@RequestMapping("/toaddBook.do")
	public String toaddBook(Model model){
		List<Store> storeList=storeService.findAllStore();
		model.addAttribute("list",storeList);
		return "addBook";
	}

	@RequestMapping("/deleteBook.do")
	@ResponseBody
	public ResultInfo deleteBook(@Param("ids")String bids){
		int x=bookService.deleteBook(bids);
		return x>0?new ResultInfo("删除成功",true):new ResultInfo("删除失败",false);
	}

	@RequestMapping("/toupdate.do")
	public String toupdate(@Param("bid")Integer bid,Model model){
		Book book=bookService.findBookById(bid);
		List<Store> storeList=storeService.findAllStore();
		model.addAttribute("list",storeList);
		model.addAttribute("book",book);
		return "updateBook";
	}
}
