package com.example.diploma.controllers;

import com.example.diploma.services.BookingService;
import com.example.diploma.services.RoomService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import java.security.Principal;

@Controller
@AllArgsConstructor
public class MainController {
    private final BookingService bookingService;
    private final RoomService roomService;
    @GetMapping("/")
    public String home(Principal principal, Model model) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "home";
    }

    @GetMapping("/about")
    public String about(Principal principal, Model model) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "about";
    }

    @GetMapping("/rooms")
    public String rooms(Principal principal,Model model) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        model.addAttribute("rooms", roomService.list());
        return "rooms";
    }
    @GetMapping("/login-required")
    public String loginRequired(Model model) {
        model.addAttribute("message", "Будь ласка, зайдіть до свого облікового запису або створіть новий");
        return "login-required";
    }
}
