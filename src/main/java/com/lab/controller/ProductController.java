package com.lab.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab.dao.ProductDao;
import com.lab.entity.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;

	@GetMapping("/product")
	public String viewProduct(Model model) {
		List<Product> listPrd = productDao.findAll();
		model.addAttribute("products", listPrd);
		return "/products";
	}

	// @GetMapping("/single-product")
	// public String viewSingleProduct() {
	// return "/single-product";
	// }
	@GetMapping("/index")
	public String index(Model model) {
		List<Product> listPrd = productDao.findAll();
		model.addAttribute("products", listPrd);
		return "/index";
	}

	// @RequestMapping("/single-product/{id}")
	// public String detail(@PathVariable("id") Integer id, Model model) {
	// Product product = productDao.findById(id).orElse(null);
	// model.addAttribute("detailProduct", product);
	// return "single-product";
	// }

}
