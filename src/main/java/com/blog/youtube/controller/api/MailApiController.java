package com.blog.youtube.controller.api;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.blog.youtube.dto.MailDto;
import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.service.MailService;

@RestController
public class MailApiController {
	
	@Autowired
	private MailService mailService;
	
	@PostMapping("/contact/send")
	public ResponseDTO<Integer> send(@RequestBody MailDto mailDto) throws MessagingException{
		System.out.println(mailDto);
		mailService.sendMail(mailDto);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}

}
