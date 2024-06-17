package com.lab.dao;

import java.util.Collection;

import com.lab.entity.CartItem;


public interface ShoppingCartService {
    void add(CartItem item);

    void remove(int id);

    CartItem update(int proID, int qty);

    void clear();

    Collection<CartItem> getAllItems();

    int getCount();

    double getAmount();
}
