package com.lab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.lab.dao.UserDao;
import com.lab.entity.Account;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {
	@Autowired
	UserDao userDao;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpSession session;
	@GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("user", new Account());
        return "/login";
    }
    @PostMapping("/login")
    public String processLogin(@ModelAttribute Account user, Model model) {
        Account existingUser = userDao.findByUsernameAndPassword(user.getUsername(), user.getPassword());
        if (existingUser != null) {
            return "redirect:/admin"; 
        }
        model.addAttribute("error", "Invalid username or password");
        return "/redirect:/admin";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute Account user, Model model) {
    	String cfpassword =  request.getParameter("cfpassword");
    	String password = request.getParameter("password");
        if (userDao.existsByUsername(user.getUsername())) {
            model.addAttribute("error", "Username already exists");
        } if(password.equals(cfpassword)){
        	  userDao.save(user);
        	  session.removeAttribute("message");
        } else {
        	model.addAttribute("message", "Vui lòng nhập xác nhận mật khẩu trùng với mật khẩu!!");
        	session.setAttribute("message", "Vui lòng nhập xác nhận mật khẩu trùng với mật khẩu!!");
        } 
        return "redirect:/login";
    }
}
