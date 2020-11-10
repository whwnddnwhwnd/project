package com.blog.youtube.dto;

import lombok.Data;

@Data
public class StoreSaveRequestDto {
	
	private String name;
	private String type;
	private String intro;
	private String tel;
	private String time;
	private String capa;
	private String animal;
	private String wheel;
	private String[] space;
	private String location;
	private double longitude;
	private double latitude;
	
}
