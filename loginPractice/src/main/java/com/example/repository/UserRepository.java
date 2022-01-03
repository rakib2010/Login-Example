package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.UserModel;

@Repository
public interface UserRepository extends CrudRepository<UserModel, Long> {
	public UserModel findByUsername(String username);
	
	@Query("SELECT p from UserModel p where p.username like %?1% or p.id like %?1%")
	public List<UserModel> searchUser(String searchText);

}
