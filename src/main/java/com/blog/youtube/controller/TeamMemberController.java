package com.blog.youtube.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeamMemberController {
	@GetMapping("/teamMember")
	public String contact() {
		return "teamMember";
	}
}
