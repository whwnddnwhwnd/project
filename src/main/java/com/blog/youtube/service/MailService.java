package com.blog.youtube.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.blog.youtube.dto.MailDto;

@Service
public class MailService {
	
	@Autowired
	private JavaMailSender javaMailSender;

	private final String sender ="eatstime@naver.com";
	private final String receive ="dmsql989@naver.com";
	private final String title ="[Eat's Time][Contact] Eat's Time 사이트에서 온 문의글입니다";
	
	public void sendMail(MailDto mailDto) throws MessagingException{
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		messageHelper.setFrom(sender);
		messageHelper.setTo(receive);
		messageHelper.setSubject(title);
		messageHelper.setText(
			"성함: "+ mailDto.getSenderName() +
			"\n\r회신 요청 이메일 주소: " + mailDto.getSenderEmail() +
			"\n\r제목: " + mailDto.getTitle() +
			"\n\r내용: " + mailDto.getContent()
		);
		javaMailSender.send(message);
	}
}
