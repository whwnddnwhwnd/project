package com.blog.youtube.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.dto.ReplyDto;
import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.service.ReplyService;

@RestController
public class ReplyApiController {
	
	@Autowired
	private ReplyService replyService;
	
	@PostMapping("/reply/save")
	public ResponseDTO<Integer> save(@AuthenticationPrincipal PrincipalDetail principal,@RequestBody ReplyDto replyDto) {
		replyService.save(principal, replyDto);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
}
