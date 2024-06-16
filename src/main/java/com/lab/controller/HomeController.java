package com.lab.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lab.dao.CategoryDao;
import com.lab.dao.OrderDao;
import com.lab.dao.PaymentDao;
import com.lab.dao.ProductDao;
import com.lab.dao.UserDao;
import com.lab.entity.Account;
import com.lab.entity.Category;
import com.lab.entity.Order;
import com.lab.entity.Payment;
import com.lab.entity.Product;
import com.lab.services.ParamService;

@Controller
public class HomeController {
	@Autowired
	ProductDao productDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	OrderDao orderDao;

	@Autowired
	PaymentDao paymentDao;

	@Autowired
	UserDao userDao;

	@Autowired
	ParamService paramService;

	@GetMapping("home")
	public String viewForm(Model model) {
		return "home";
	}

	@GetMapping("page")
	public String paginate(Model model, Model model2, Model model3, Model model4, Model model5,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = productDao.findAll(pageable);
		List<Category> categories = categoryDao.findAll();
		List<Order> orders = orderDao.findAll();
		List<Payment> payments = paymentDao.findAll();
		List<Account> accounts = userDao.findAll();
		model2.addAttribute("LIST_CATEGORY", categories);
		model.addAttribute("LIST_PRODUCT", page);
		model3.addAttribute("LIST_ORDER", orders);
		model4.addAttribute("LIST_PAYMENT", payments);
		model5.addAttribute("LIST_ACCOUNT", accounts);
		return "redirect:/home";
	}
}