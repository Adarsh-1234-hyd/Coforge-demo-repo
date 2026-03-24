package com.coforge.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coforge.dao.MovieDao;
import com.coforge.entity.Movies;
@Service
public class MovieServices {
	@Autowired
    MovieDao movieDao;
	 public List<Movies>getAllMovies(){
		 return movieDao.getAllMovies();
	 }
	 
	 public Movies addMovies(Movies movies) {
		 return movieDao.addMovies(movies);
	 }
	 public Movies getMoviesByid (long movieid) {
		  return movieDao.getMoviesByid(movieid).orElseThrow(()->new RuntimeException());
	 }
	 
	 public List<Movies>findbylanguage(String language){
		 return movieDao.findBylanguage(language);
	 }
}
