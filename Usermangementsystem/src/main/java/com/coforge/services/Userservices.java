package com.coforge.services;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coforge.controller.Usercontroller;
import com.coforge.dao.Userdao;
import com.coforge.entity.User;

@Service
public class Userservices {
	
private static final Logger logger = LoggerFactory.getLogger(Usercontroller.class);
	@Autowired
     Userdao userdao;
     
     public List<User>getallUsers(){
    	 logger.info("FINDALL");
     	return userdao.getallUsers();
     }
     
     public User saveUser (User user) {
    	 logger.info("SAVING ALL");
     	return userdao.saveUser(user);
     }
     
     public void deleteuser (long uid) {
    	 logger.info("Deleted info");
     	userdao.deleteuser(uid);
     }
      
}
