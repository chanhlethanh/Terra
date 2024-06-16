package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.Shipping;

public interface ShippingDao extends JpaRepository<Shipping, Long>{

}
