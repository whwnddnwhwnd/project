package com.blog.youtube.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Store {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 100)
	private String name;
	
	@Column(nullable = false, length = 100)
	private String type;
	
	@Column(nullable = false, length = 300)
	private String intro;
	
	@Column(nullable = false, length = 50)
	private String tel;
	
	@Column(nullable = false, length = 50)
	private String time;
	
	@Column(nullable = false, length = 50)
	private String capa;
	
	@Column(nullable = false, length = 30)
	private String animal;
	
	@Column(nullable = false, length = 30)
	private String wheel;
	
	@Column(nullable = false, length = 30)
	private String space;
	
	@Column(nullable = false, length = 100)
	private String location;
	
	@Column(nullable = false, length = 100)
	private double longitude;
	
	@Column(nullable = false, length = 100)
	private double latitude;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userId")
	private User user;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	
}
