package com.blog.youtube.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.model.Note;
import com.blog.youtube.model.User;
import com.blog.youtube.repository.NoteRepository;

@Service
public class NoteServcie {
	
	@Autowired
	private NoteRepository noteRepository;
	
	@Autowired
	private UserService userService;
	
	@Transactional
	public void noteinsert(PrincipalDetail principal, Note note) {
		User user = userService.find(principal.getUsername());
		note.setUser(user);
		noteRepository.save(note);
	}
	
	@Transactional(readOnly = true)
	public List<Note> findByUsername(PrincipalDetail principal){
		return noteRepository.findByUsername(principal.getUsername());
	}
	
	

}
