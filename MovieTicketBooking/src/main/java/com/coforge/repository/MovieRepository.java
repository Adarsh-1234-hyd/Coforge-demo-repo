package com.coforge.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.coforge.entity.Movies;

public interface MovieRepository extends JpaRepository<Movies, Long>{
     
	
	 public List<Movies> findByLanguage(@Param("language") String language);
	 public Movies findByTitle(@Param("title") String title);
}
