package com.blog.youtube.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Integer>{
	

	@Query(value="SELECT * FROM reply where storeId=?1", nativeQuery = true)
	List<Reply> findByStoreId(int storeId);
}
