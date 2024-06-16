package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.lab.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{
}
