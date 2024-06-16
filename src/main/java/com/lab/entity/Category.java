package com.lab.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Categories")
public class Category {
	@Id
	String id;
	String category_name;
	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<Product> products;
}
