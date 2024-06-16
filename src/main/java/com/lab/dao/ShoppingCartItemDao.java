package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.ShoppingCartItem;

public interface ShoppingCartItemDao extends JpaRepository<ShoppingCartItem, Long>{

}
