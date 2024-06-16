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
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "ShoppingCarts")
public class ShoppingCart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String transaction_id_user;
	String transaction_id_merchant;
	
	@ManyToOne
	@JoinColumn(name = "Username")
	Account account;
	
	@ManyToOne
	@JoinColumn(name = "orderId")
	Order order;
	
	@JsonIgnore
	@OneToMany(mappedBy = "shoppingCart")
	List<ShoppingCartItem> shoppingCartItems;
	
	@JsonIgnore
	@OneToMany(mappedBy = "shoppingCart")
	List<Payment> payments;
}
