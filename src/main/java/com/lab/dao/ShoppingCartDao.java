package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.ShoppingCart;

public interface ShoppingCartDao extends JpaRepository<ShoppingCart, Long>{

}
