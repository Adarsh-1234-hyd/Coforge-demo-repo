package com.coforge.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coforge.entity.User;
import com.coforge.repository.Userrepository;

@Repository
public class Userdao {
	@Autowired
    Userrepository userrepository;
    
    
    public List<User>getallUsers(){
    	return userrepository.findAll();
    }
    
    public User saveUser (User user) {
    	return userrepository.save(user);
    }
    
    public void deleteuser (long uid) {
    	userrepository.deleteById(uid);
    }
     
}
