package com.blog.youtube.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.model.User;
import com.blog.youtube.repository.UserRepository;
import com.blog.youtube.service.UserService;
@RestController
public class UserApiController {
	
	@Value("${cos.key}")
	private String cosKey;
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepository;
	
	@PostMapping("/auth/joinProc")
	public ResponseDTO<Integer> save(@RequestBody User user) { //username, password, email
		System.out.println(user);
		userService.join(user);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
	@PutMapping("/user/update")
	public ResponseDTO<Integer> update(@RequestBody User user){
		userService.update(user);
		if(user.getPassword() == null) {
			user.setPassword(cosKey);
			Authentication auth = authenticationManager.authenticate(
					new UsernamePasswordAuthenticationToken(user.getUsername(),user.getPassword()));
			SecurityContextHolder.getContext().setAuthentication(auth);
		}
		Authentication auth = authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(user.getUsername(),user.getPassword()));
		SecurityContextHolder.getContext().setAuthentication(auth);
		
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
	
	@GetMapping("/auth/usernameCheck")
	public int usernameCheck(String username) {
		System.out.println(username);
		User user = userRepository.findByusername2(username);
		System.out.println(user);
		int result;
		//이미 존재하는 아이디일 경우
		if(user != null) {
			result = 0;
		}else {
		//아이디가 존재하지 않을 경우
		result = 1;
		}
		System.out.println(result);
		return result;
	}
}
