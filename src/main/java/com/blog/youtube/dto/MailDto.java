package com.blog.youtube.dto;

import lombok.Data;

@Data
public class MailDto {
	
	private String senderName;
	private String senderEmail;
	private String title;
	private String content;

}
