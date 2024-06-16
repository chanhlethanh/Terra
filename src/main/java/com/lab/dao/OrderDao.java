package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.Order;

public interface OrderDao extends JpaRepository<Order, Long>{

}
