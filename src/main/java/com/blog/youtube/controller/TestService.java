package com.blog.youtube.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.model.Store;
import com.blog.youtube.repository.StoreRepository;

@Service
public class TestService {
	
	@Autowired
	private StoreRepository storeRepository;

	@Transactional
	public void test(Store store) {
		storeRepository.save(store);
	}

	public Store detail(int id) {
		return storeRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("가게정보없음");
		});
	}

}
