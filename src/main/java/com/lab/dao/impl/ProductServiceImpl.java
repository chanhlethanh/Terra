package com.lab.dao.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.lab.dao.ProductDao;
import com.lab.dao.ProductService;
import com.lab.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDAO;

    @Override
    public Product save(Product entity) {
        return productDAO.save(entity);
    }

    @Override
    public List<Product> saveAll(List<Product> entities) {
        return (List<Product>) productDAO.saveAll(entities);
    }

    @Override
    public Optional<Product> findById(Integer integer) {
        return productDAO.findById(integer);
    }

    @Override
    public boolean existsById(Integer integer) {
        return productDAO.existsById(integer);
    }

    @Override
    public List<Product> findAll() {
        return (List<Product>) productDAO.findAll();
    }

    @Override
    public List<Product> findAllById(List<Integer> integers) {
        return (List<Product>) productDAO.findAllById(integers);
    }

    @Override
    public long count() {
        return productDAO.count();
    }

    @Override
    public void deleteById(Integer integer) {
        productDAO.deleteById(integer);
    }

    @Override
    public void delete(Product entity) {
        productDAO.delete(entity);
    }

    @Override
    public void deleteAllById(List<Integer> integers) {
        productDAO.deleteAllById(integers);
    }

    @Override
    public void deleteAll(List<Product> entities) {
        productDAO.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        productDAO.deleteAll();
    }

    @Override
    public List<Product> findAll(Sort sort) {
        return (List<Product>) productDAO.findAll(sort);
    }

    @Override
    public Page<Product> findAll(Pageable pageable) {
        return productDAO.findAll(pageable);
    }

    @Override
    public Product findProductByID(int id){
        for (Product product : productDAO.findAll()) {
            if (product.getId() == id) {
                return product;
            }
        }
return null;
    }

}
