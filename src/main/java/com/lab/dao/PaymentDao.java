package com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab.entity.Payment;

public interface PaymentDao extends JpaRepository<Payment, Long>{

}
