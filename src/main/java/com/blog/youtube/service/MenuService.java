package com.blog.youtube.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.model.Menu;
import com.blog.youtube.model.Store;
import com.blog.youtube.repository.MenuRepository;

@Service
public class MenuService {
	
	@Autowired
	private StoreService storeService;

	@Autowired
	private MenuRepository menuRepository;
	
	@Transactional
	public void menuinsert(Menu menu, PrincipalDetail principal) {
		menu.setStore(storeService.findMyStore(principal.getUsername()));
		menuRepository.save(menu);
	}
	@Transactional(readOnly = true)
	public List<Menu> list(PrincipalDetail principal){
		Store store = storeService.findMyStore(principal.getUsername());
		return menuRepository.findByStoreId(store.getId());
	}
	
	@Transactional(readOnly = true)
	public List<Menu> findMyMenu(Store store){
		return menuRepository.findByStoreId(store.getId());
	}
	
	
}
