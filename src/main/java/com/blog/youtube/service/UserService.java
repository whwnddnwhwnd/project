package com.blog.youtube.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.model.RoleType;
import com.blog.youtube.model.User;
import com.blog.youtube.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder bcryPasswordEncoder;

	@Transactional
	public void join(User user) {
		String rawPassword = user.getPassword();
		String encPassword = bcryPasswordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRole(RoleType.USER);
		userRepository.save(user);
	}
	@Transactional(readOnly = true)
	public User find(String username) {
		User user = userRepository.findByUsername(username).orElseGet(()->{
			return new User();
		});
		return user;
	}
	@Transactional
	public void update(User requestUser) {
		User user = userRepository.findByUsername(requestUser.getUsername()).orElseThrow(()->{
			return new IllegalArgumentException("회원 찾기 실패");
		});
			if(requestUser.getPassword() != null) {
			String rawPassword = requestUser.getPassword();
			String encodedPassword = bcryPasswordEncoder.encode(rawPassword);
			user.setPassword(encodedPassword);
			}
			user.setEmail(requestUser.getEmail());
			user.setTelephone(requestUser.getTelephone());
			
	}
}
