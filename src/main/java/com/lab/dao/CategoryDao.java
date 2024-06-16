package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.Category;

public interface CategoryDao extends JpaRepository<Category, String>{

}
