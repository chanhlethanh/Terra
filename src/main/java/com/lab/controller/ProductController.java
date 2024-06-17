package com.lab.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lab.dao.ProductService;
import com.lab.entity.Product;
import com.lab.services.SessionService;

@Controller
@RequestMapping("product")

public class ProductController {
    @Autowired
    SessionService session;

    @Autowired
    ProductService service;

    @GetMapping("views")
    public String viewProducts(Model model, @RequestParam("field") Optional<String> field) {
        Sort sort = Sort.by(Sort.Direction.DESC, field.orElse("price"));
        List<Product> ls = service.findAll(sort);
        model.addAttribute("LIST_PRODUCT", ls);
        return "view-products";
    }

    public boolean checkSercurity() {
        String username = session.get("USERNAME");
        System.err.println("checkSercurity: " + username);
        if (username != null) {
            return true;
        }
        return false;
    }

    @GetMapping("views/page")
    public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
        Pageable pageable = PageRequest.of(p.orElse(0), 10);
        Page<Product> page = service.findAll(pageable);
        model.addAttribute("LIST_PRODUCT", page);
        return "view-products";
    }
}
