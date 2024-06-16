package com.lab.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
@Table(name = "ShoppingCartItems")
public class ShoppingCartItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	Integer quantity;
	
	@ManyToOne
	@JoinColumn(name = "productId")
	Product product;
	
	@ManyToOne
	@JoinColumn(name = "shoppingCartId")
	ShoppingCart shoppingCart;
}
