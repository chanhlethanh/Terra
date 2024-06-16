package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.Account;

public interface UserDao extends JpaRepository<Account, Integer> {
	Account findByUsernameAndPassword(String username, String password);

	boolean existsByUsername(String username);
}
