package com.lab.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Accounts")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String username;
	String password;
	String fullname;
	String email;
	String photo;
//	String roleId;

//	boolean admin;
//	boolean activated;
	@Transient
	private String cfpassword;
	/*
	 * @JsonIgnore
	 * 
	 * @OneToMany(mappedBy = "account") List<Order> orders;
	 */

	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<ShoppingCart> shoppingCarts;

	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Payment> payments;
}
