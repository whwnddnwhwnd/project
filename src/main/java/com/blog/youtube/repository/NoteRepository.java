package com.blog.youtube.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.blog.youtube.model.Note;

public interface NoteRepository extends JpaRepository<Note, Integer>{

	@Query(value="SELECT * FROM note WHERE username=?1",nativeQuery = true)
	List<Note> findByUsername(String username);
}
