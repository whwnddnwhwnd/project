package com.blog.youtube.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.model.Store;
import com.blog.youtube.repository.StoreRepository;

@Service
public class StoreService {

	@Autowired
	private StoreRepository storeRepository;
	
	@Transactional
	public void storeInsert(Store requestStore) {
		storeRepository.save(requestStore);
	}
	
	@Transactional(readOnly = true)
	public Store findMyStore(String username) {
		Store store = storeRepository.findByUserId(username);
		return store;
	}
	@Transactional(readOnly = true)
	public Page<Store> list(Pageable pageable){
		Page<Store> pageList = storeRepository.findAll(pageable);
		return pageList;
	}
	public Store findById(int id) {
		Optional<Store> optional = storeRepository.findById(id);
		Store store = optional.get();
		return store;
	}
}
