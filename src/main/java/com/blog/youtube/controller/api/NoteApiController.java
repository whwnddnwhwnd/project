package com.blog.youtube.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.model.Note;
import com.blog.youtube.service.NoteServcie;

@RestController
public class NoteApiController {
	
	@Autowired
	private NoteServcie noteService;

	@PostMapping("/mypage/note/insert")
	public ResponseDTO<Integer> save(@AuthenticationPrincipal PrincipalDetail principal,@RequestBody Note note) {
		noteService.noteinsert(principal, note);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
}
