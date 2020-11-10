package com.blog.youtube.dto;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TestDTO {

	private String name;
	private int price;
	private String allergy;
	private String vegan;
	private MultipartFile file;
}
