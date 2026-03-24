package com.coforge.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coforge.entity.Movies;
import com.coforge.repository.MovieRepository;

@Repository
public class MovieDao {
   
	@Autowired
	MovieRepository movieRepository;
	
	 public List<Movies>getAllMovies(){
		 return movieRepository.findAll();
	 }
	 
	 public Movies addMovies(Movies movies) {
		 return movieRepository.save(movies);
	 }
	 public Optional<Movies> getMoviesByid (long movieid) {
		 return movieRepository.findById(movieid);
	 }
	 public List<Movies> findBylanguage(String language){
		 return movieRepository.findByLanguage(language);
	 }
}
