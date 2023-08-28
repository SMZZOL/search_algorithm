package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.SearchDTO;
import com.spring.service.CatListService;

@Controller
@RequestMapping("/search")
public class CatListController {

	public CatListController() {
		System.out.println("catlist()");
	}
	
	CatListService catlistservice;
	
	@Autowired
	public void setCatlistservice(CatListService catlistservice) {
		this.catlistservice = catlistservice;
	}

	
	@GetMapping("/list")
	public void list_selectByUid(int user_uid,Model model) {
		model.addAttribute("list", catlistservice.list_selectByUid(user_uid));
	}
	
	
	@GetMapping("/view")
	public void view(int uid,Model model)
	{}
	
	@PostMapping("/searchList")
	public void search_list(int user_uid, String cat_keyvalue, Model model){
		
		List<SearchDTO> list = catlistservice.search_list(user_uid, cat_keyvalue);
		model.addAttribute("keyword", catlistservice.getcatbycuid(list.get(0).getC_uid())); 
		
				
		model.addAttribute("list",list);
		
	}	
	
	@GetMapping("/trendlist")
	public void trend_list(Model model) {
		model.addAttribute("list",catlistservice.trend_list());
		
	}
	
	@GetMapping("/searchList")
	public void search_list(String cat_keyvalue, Model model) {
		List<SearchDTO> list = catlistservice.search_list(1, cat_keyvalue);
		model.addAttribute("keyword", catlistservice.getcatbycuid(list.get(0).getC_uid())); 
		
				
		model.addAttribute("list",list);
		
	}
	
	@GetMapping("/realtime_list")
	public void realtime_list(Model model) {
		model.addAttribute("list", catlistservice.realtime_list());
		
	}
	
	

	
}
