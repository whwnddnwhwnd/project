package com.blog.youtube.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.User;
public interface UserRepository extends JpaRepository<User, Integer>{
	
	
	User findByUsernameAndPassword(String username, String password);
	
	@Query(value = "SELECT * FROM user WHERE username=?1 AND password=?2",nativeQuery = true)
	User login(String username, String password);
	
	Optional<User> findByUsername(String username);
	
	@Query(value = "SELECT * FROM user WHERE username=?1", nativeQuery = true)
	public User findByusername2(String username);
	
}
