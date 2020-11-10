package com.blog.youtube.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.Store;

public interface StoreRepository extends JpaRepository<Store, Integer>{
	
	@Query(value="SELECT * FROM store WHERE userId=?1", nativeQuery = true)
	public Store findByUserId(String userId);

}
