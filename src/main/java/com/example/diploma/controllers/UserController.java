package com.example.diploma.controllers;

import com.example.diploma.models.User;
import com.example.diploma.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error, Model model) {
        if (error != null) {
            model.addAttribute("errorMessage", "Неправильний логін або пароль.");
        }
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
//        System.out.println("Checking...");
//        System.out.println(user.toString());
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "User with email: " + user.getEmail() + " is exists");
            return "registration";
        }
        return "redirect:/login";
    }
}
