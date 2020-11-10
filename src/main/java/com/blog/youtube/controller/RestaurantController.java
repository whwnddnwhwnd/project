package com.blog.youtube.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.blog.youtube.model.Store;
import com.blog.youtube.service.MenuService;
import com.blog.youtube.service.ReplyService;
import com.blog.youtube.service.StoreService;

@Controller
public class RestaurantController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private ReplyService replyService;

	@GetMapping("/restaurant")
	public String restaurant(Model model,@PageableDefault(size = 6, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		
		Page<Store> storePage = storeService.list(pageable);
		model.addAttribute("store",storePage);
		return "restaurant";
	}
	
	@GetMapping("/restaurant/details/{id}")
	public String details(@PathVariable int id,Model model) {
		Store store = storeService.findById(id);
		model.addAttribute("store", store);
		model.addAttribute("menu", menuService.findMyMenu(store));
		model.addAttribute("reply",replyService.find(id));
		return "restaurant/details";
	}
	
}
