package com.lab.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String product_name;
	String image;
	Double price;
	Integer quantity;
	/*
	 * @Temporal(TemporalType.DATE)
	 * 
	 * @Column(name = "Createdate") Date createDate = new Date();
	 */
	Boolean available;
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;
	@JsonIgnore
	@OneToMany(mappedBy = "product")
	List<ShoppingCartItem> ShoppingCartItems;

	public String getCategoryid() {
		if (this.category != null) {
			return this.category.getId();
		}
		return null;
	}
}
