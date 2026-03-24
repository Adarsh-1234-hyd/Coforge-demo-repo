package com.coforge.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.coforge.entity.Movies;
import com.coforge.services.MovieServices;
@RestController
public class Moviecontroller {
  
	@Autowired
	MovieServices movieServices;
	@GetMapping("/movies")
	public ResponseEntity<List<Movies>> getAllMovies() {
		return new ResponseEntity<>(movieServices.getAllMovies(),HttpStatus.OK);
	}
	@PostMapping("/movies")
	public ResponseEntity<Movies> addMovies(@RequestBody Movies movies){
		return new ResponseEntity<>(movieServices.addMovies(movies),HttpStatus.OK);
	}
	@GetMapping("/movies/{Movieid}")
	public ResponseEntity<Movies> getMoviesById(@PathVariable("movieid") long movieid) {
		return new ResponseEntity<>(movieServices.getMoviesByid(movieid),HttpStatus.OK);
	}
	
	@GetMapping("/movies/language/{language}")
	public ResponseEntity<List<Movies>>findbylangauge(@PathVariable("language") String language){
		return new ResponseEntity<>(movieServices.findbylanguage(language),HttpStatus.OK);
	}
	
}
