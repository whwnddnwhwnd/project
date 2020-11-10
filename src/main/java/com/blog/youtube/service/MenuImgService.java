package com.blog.youtube.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.model.MenuImg;
import com.blog.youtube.repository.MenuImgRepository;

@Service
public class MenuImgService {
	
	@Autowired
	private MenuImgRepository imgRepository;
	
	@Transactional(readOnly = true)
	public List<MenuImg> findByImgs(int storeId){
		return imgRepository.findByStoreId(storeId);
	}

}
