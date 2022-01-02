package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.UserModel;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long>{
	public UserModel findByUsername(String username);
	public UserModel findByPassword(String password);

}
