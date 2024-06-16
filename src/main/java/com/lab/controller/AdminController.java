package com.lab.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
public class AdminController {
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

  // @Autowired
  // ShippingDao shippingDao;
  /**/
  @GetMapping("/admin")
  public String viewAdmin(Model model) {
    return "/admin";
  }

  @GetMapping("simple-page")
  public String paginate(Model model, Model model2, Model model3, Model model4,
      Model model5,
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
    return "/basic-table";
  }

  @PostMapping("Save")
  public String save(@Validated @ModelAttribute("ACCOUNT") Account ac,
      BindingResult result, Model model,
      @RequestParam("image") MultipartFile multipartFile) {
    if (result.hasErrors() || multipartFile.isEmpty()) {
      model.addAttribute("ERROR_PHOTO", "Please select a photo");
      return "redirect:/simple-page";
    }
    String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
    String uploadDir = "/assets/uploads/";
    ac.setPhoto(fileName);
    userDao.save(ac);
    return "redirect:/simple-page";
  }

  @PostMapping("Save-product")
  public String save(@Validated @ModelAttribute("PRODUCT") Product p,
      BindingResult result, Model model,
      @RequestParam("product_name") String p1, @RequestParam("price") String p2,
      @RequestParam("quantity") String p3) {

    p.setProduct_name(p1);
    p.setPrice(Double.valueOf(p2));
    p.setQuantity(Integer.valueOf(p3));
    productDao.save(p);
    return "redirect:/simple-page";
  }

  @GetMapping(value = "simple-page", params = "btnEdit")
  public String edit(@RequestParam("id") String id, Model model) {
    int ids = Integer.parseInt(id);
    Optional<Account> account = userDao.findById(ids);
    model.addAttribute("ACCOUNT", account);
    return "redirect:/simple-page";
  }

  @GetMapping(value = "simple-page", params = "btnDel")
  public String delAccount(@RequestParam("id") String id, Model model, Model model2, Model model3, Model model4,
      Model model5, @RequestParam("p") Optional<Integer> p) {
    int ids = Integer.parseInt(id);
    userDao.deleteById(ids);
    return "redirect:/simple-page";
  }

  @GetMapping("/single-product")
  public String viewSingleProduct() {
    return "/index";
  }

  @RequestMapping("/single-product/{id}")
  public String detail(@PathVariable("id") Integer id, Model model) {
    Product product = productDao.findById(id).orElse(null);
    model.addAttribute("detailProduct", product);
    return "index";
  }
}
