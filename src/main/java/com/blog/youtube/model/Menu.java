package com.blog.youtube.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Menu {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 100)
	private String name;
	
	@Column(nullable = false, length = 30)
	private int price;
	
	@Column(nullable = false, length = 50)
	private String allergy;
	
	@Column(nullable = false, length = 100)
	private String vegan;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="storeId")
	private Store store;
	
	private String savedfile;
	private String originalfile;

}
