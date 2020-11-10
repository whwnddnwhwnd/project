package com.blog.youtube.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.dto.StoreSaveRequestDto;
import com.blog.youtube.model.Store;

@RestController
public class TestRestController {
	
	
	@Autowired
	private TestService testService;
	

	@PostMapping("/test/rest1")
	public ResponseDTO<Integer> restTest(@RequestBody StoreSaveRequestDto storeDto
			,@AuthenticationPrincipal PrincipalDetail principal) {
		String arrayTemp[] = storeDto.getSpace();
		StringBuffer asd = new StringBuffer();
		if(arrayTemp.length != 0) {
			for(int i=0;i<arrayTemp.length;i++) {
				asd.append(arrayTemp[i]);
				asd.append(",");
			}
		}
		asd.deleteCharAt(asd.lastIndexOf(","));
		String space = asd.toString();
		Store store = new Store();
			store.setName(storeDto.getName());
			store.setType(storeDto.getType());
			store.setIntro(storeDto.getIntro());
			store.setTel(storeDto.getTel());
			store.setTime(storeDto.getTime());
			store.setCapa(storeDto.getCapa());
			store.setAnimal(storeDto.getAnimal());
			store.setWheel(storeDto.getWheel());
			store.setSpace(space);
			store.setLocation(storeDto.getLocation());
			
			store.setUser(principal.getUser());
			
			testService.test(store);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PostMapping("/test/please")
	public ResponseDTO<Integer> please(@RequestBody HttpServletRequest request) throws Exception {
		System.out.println("-------------------------");
		MultipartHttpServletRequest test = (MultipartHttpServletRequest) request;
		MultipartFile file = test.getFile("6");
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
	
}
