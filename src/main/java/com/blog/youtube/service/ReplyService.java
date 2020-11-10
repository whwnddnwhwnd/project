package com.blog.youtube.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.dto.ReplyDto;
import com.blog.youtube.model.Reply;
import com.blog.youtube.repository.ReplyRepository;

@Service
public class ReplyService {
	
	@Autowired
	private ReplyRepository replyRepository;
	
	@Transactional
	public void save(PrincipalDetail principal, ReplyDto dto) {
		Reply reply = new Reply();
		reply.setContent(dto.getComment());
		reply.setStoreId(dto.getStoreId());
		reply.setWriter(principal.getUsername());
		replyRepository.save(reply);
	}
	
	@Transactional(readOnly = true)
	public List<Reply> find(int storeId){
		return replyRepository.findByStoreId(storeId);
	}

}
