package com.lab.entity;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Payments")
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	@Column(name = "Createdate")
	Date createDate = new Date();
	
	@ManyToOne
	@JoinColumn(name = "Username")
	Account account;
	
	@ManyToOne
	@JoinColumn(name = "shoppingCartId")
	ShoppingCart shoppingCart;
}
