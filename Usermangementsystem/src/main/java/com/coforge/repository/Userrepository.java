package com.coforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.coforge.entity.User;

public interface Userrepository extends JpaRepository<User, Long> {

}
