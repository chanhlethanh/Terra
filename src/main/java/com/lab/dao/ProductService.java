package com.lab.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.lab.entity.Product;

public interface ProductService {

    Product save(Product entity);

    List<Product> saveAll(List<Product> entities);

    Optional<Product> findById(Integer integer);

    boolean existsById(Integer integer);

    List<Product> findAll();

    List<Product> findAllById(List<Integer> integers);

    long count();

    void deleteById(Integer integer);

    void delete(Product entity);

    void deleteAllById(List<Integer> integers);

    void deleteAll(List<Product> entities);

    void deleteAll();

    List<Product> findAll(Sort sort);

    Page<Product> findAll(Pageable pageable);

    Product findProductByID(int id);
}
