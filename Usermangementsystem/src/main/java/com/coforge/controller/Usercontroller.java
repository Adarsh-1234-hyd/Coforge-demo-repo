package com.coforge.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.coforge.entity.User;
import com.coforge.services.Userservices;



@RestController
public class Usercontroller {
	 private static final Logger logger = LoggerFactory.getLogger(Usercontroller.class);
	
	@Autowired
   Userservices userservices;
   
    @GetMapping("/user")
    public ResponseEntity<List<User>>getallUsers(){
    	logger.info("Fetching all info");
    	return new ResponseEntity<>(userservices.getallUsers(),HttpStatus.OK);
    }
    @PostMapping("/user/posting")
    public ResponseEntity<User> saveUser (@RequestBody User user) {
    	logger.info("Saving all info" ,user);
    	return new ResponseEntity<>(userservices.saveUser(user),HttpStatus.OK);
    }
    @DeleteMapping("/user/{uid}")
    public  void deleteuser (@PathVariable long uid) {
    	logger.info("DELETING");
    	userservices.deleteuser(uid);
    	System.out.println("deleted");
    }
}
