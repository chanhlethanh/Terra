package com.lab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lab.dao.ProductService;
import com.lab.dao.ShoppingCartService;
import com.lab.entity.CartItem;
import com.lab.entity.Product;
import com.lab.services.ParamService;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
    @Autowired
    ParamService param;


    @Autowired
    ProductService productService;
    @Autowired
    ShoppingCartService cartService;

    @GetMapping("views")
    public String viewCarts(Model model) {
        model.addAttribute("CART_ITEMS", cartService.getAllItems());
        model.addAttribute("TOTAL", cartService.getAmount());
        return "cart-items";
    }

    @GetMapping("add/{id}")
    public String addCart(@PathVariable("id") Integer id) {
       Product product = productService.findProductByID(id);
       if (product != null) {
           CartItem item = new CartItem();
           item.setProductId(product.getId());
           item.setName(product.getProduct_name());
           item.setPrice(product.getPrice());
           item.setQty(1);
           cartService.add(item);
       }
        return "redirect:/shopping-cart/views";
    }

    @GetMapping("clear")
    public String clearCart() {
        cartService.clear();
        return "redirect:/shopping-cart/views";
    }

    @GetMapping("del/{id}")
    public String removeCart(@PathVariable("id") Integer id) {
        cartService.remove(id);
        return "redirect:/shopping-cart/views";
    }

    @PostMapping("update")
    public String update(@RequestParam("id") Integer id, @RequestParam("qty") Integer qty) {
        System.out.println(id + "-" + qty);
        cartService.update(id, qty);
        return "redirect:/shopping-cart/views";
    }
}
