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
@Table(name = "Orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String address;
	@Temporal(TemporalType.DATE)
	@Column(name = "Orderdate")
	Date orderDate = new Date();
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "Username") Account account;
	 */
//	@ManyToOne
//	@JoinColumn(name = "shippingId")
//	Shipping shipping;

	@JsonIgnore
	@OneToMany(mappedBy = "order")
	List<ShoppingCart> shoppingCarts;
}
