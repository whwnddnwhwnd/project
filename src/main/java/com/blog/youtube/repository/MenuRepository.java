package com.blog.youtube.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.Menu;

public interface MenuRepository extends JpaRepository<Menu, Integer>{
	
	@Query(value="SELECT * FROM menu WHERE storeId =?1", nativeQuery = true)
	List<Menu> findByStoreId(int storeId);

}
