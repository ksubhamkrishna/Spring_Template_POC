package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/show")
    public String showLoginPage() {
        return "login";  // Return the login page view
    }

    @PostMapping(value = "/process")
    public String loginUser(@RequestParam String username, @RequestParam String password, Model model) {
        if (userService.validateUser(username, password)) {
            return "welcome";  // Redirect to the welcome page if login is successful
        } else {
            model.addAttribute("error", "Invalid username or password");  // Add error message to the model
            return "login";  // Return to login page with error message
        }
    }
}
