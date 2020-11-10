package com.blog.youtube.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더패턴
public class User {
	
	
/*	
	@Id //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int id; 
*/
	@Id
	private String username; 
	
	@Column(nullable = false, length = 30)
	private String name;  
	
	@Column(nullable = false, length = 100)
	private String password;
	
	@Column(nullable = true, length = 100)
	private String birth;
	
	@Column(nullable = true, length = 50)
	private String email;
	
	//추가기입
	@Column(nullable = true, length = 50)
	private String telephone;
	//추가기입
	@Column(nullable = true, length = 20)
	private String gender;
	
	@Column(nullable = true, length = 50)
	private String type;
	
	//@ColumnDefault("'user'")
	@Enumerated(EnumType.STRING)
	private RoleType role; 
	
	@CreationTimestamp // 시간 자동 입력
	private Timestamp createDate;

}
