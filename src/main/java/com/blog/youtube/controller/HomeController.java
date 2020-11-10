package com.blog.youtube.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.blog.youtube.model.Store;
import com.blog.youtube.service.StoreService;


@Controller
public class HomeController {
	
	@Autowired
	private StoreService storeService;
	
	@GetMapping({"","/"})
	public String index(Model model,@PageableDefault(size = 3, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		Page<Store> storePage = storeService.list(pageable);
		List<Store> storeList = storePage.getContent();
		model.addAttribute("store",storeList);
		return "home"; 
	}
}
