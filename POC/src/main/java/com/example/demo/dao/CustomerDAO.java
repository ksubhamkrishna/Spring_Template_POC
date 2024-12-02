package com.example.demo.dao;

import com.example.demo.model.User;

public interface CustomerDAO {
    void saveUser(User user);
    User findByUsername(String username);
}
