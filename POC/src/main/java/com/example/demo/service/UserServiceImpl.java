package com.example.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private CustomerDAO customerDAO;

    @Override
    public void register(User user) {
        customerDAO.saveUser(user);
    }

    @Override
    public boolean validateUser(String username, String password) {
        User user = customerDAO.findByUsername(username);
        return user != null && user.getPassword().equals(password);
    }
}
