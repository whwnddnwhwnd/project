package com.blog.youtube.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@GetMapping("/test/test1")
	public String storeTest() {
		return "test/storeTest";
	}
	@GetMapping("/test/menu")
	public String menu() {
		return "test/menu";
	}
	
	@GetMapping("/test/test2/{id}")
	public String stroeTest2(Model model,@PathVariable int id) {
		model.addAttribute("store",testService.detail(id));
		return "test/storeTest2";
	}
	@PostMapping("/mypage/menu/insert2")
	public String test(@RequestBody MultipartHttpServletRequest request) {
		
		MultipartFile test1 = request.getFile("gdsImg");
		MultipartFile test2 = request.getFile("gdsname");
		System.out.println(test1);
		System.out.println(test2);
		
		
		return "redirect:/mypage/menu";
	}
}
