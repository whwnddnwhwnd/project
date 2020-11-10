package com.blog.youtube.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.model.Store;
import com.blog.youtube.service.MenuImgService;
import com.blog.youtube.service.MenuService;
import com.blog.youtube.service.NoteServcie;
import com.blog.youtube.service.StoreService;

@Controller
public class MyPageController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private NoteServcie noteService;
	
	/*
	 * @Autowired private MenuImgService menuImgService;
	 */
	
	@GetMapping("/mypage")
	public String mypage() {
		return "myPage/myPage";
	}
	@GetMapping("/mypage/like")
	public String like() {
		return "myPage/like";
	}
	@GetMapping("/mypage/note")
	public String note(@AuthenticationPrincipal PrincipalDetail principal,Model model) {
		model.addAttribute("note",noteService.findByUsername(principal));
		return "myPage/note";
	}
	@GetMapping("/mypage/note/insert")
	public String noteInsert() {
		return "myPage/note/insert";
	}
	@GetMapping("/mypage/subscriber")
	public String subscriber() {
		return "myPage/subscriber";
	}
	@GetMapping("/mypage/setting")
	public String setting(@AuthenticationPrincipal PrincipalDetail principal,Model model) {
		Store store = storeService.findMyStore(principal.getUsername());
		if(store != null) {
			model.addAttribute("store",store);
		}
		return "myPage/setting";
	}
	@GetMapping("/mypage/setting/insert")
	public String settingInsert() {
		return "myPage/setting/insert";
	}
	@GetMapping("/mypage/menu")
	public String menu(Model model, @AuthenticationPrincipal PrincipalDetail principal) {
		Store store = storeService.findMyStore(principal.getUsername());
		model.addAttribute("store",store);
		if(store != null) {
			model.addAttribute("menu", menuService.list(principal));
		}
		return "myPage/menu";
	}
	@GetMapping("/mypage/menu/insert")
	public String menuInsert() {
		return "myPage/menu/insert";
	}
	@GetMapping("/mypage/update")
	public String update() {
		return "myPage/update";
	}
	@GetMapping("/mypage/leave")
	public String leave() {
		return "myPage/leave";
	}
}
