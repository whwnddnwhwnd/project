package com.blog.youtube.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.MenuImg;

public interface MenuImgRepository extends JpaRepository<MenuImg, Integer>{

	@Query(value="SELECT * FROM menu WHERE storeId =?1", nativeQuery = true)
	List<MenuImg> findByStoreId(int storeId);
}
