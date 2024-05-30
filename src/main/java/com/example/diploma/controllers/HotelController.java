package com.example.diploma.controllers;

import com.example.diploma.models.Hotel;
import com.example.diploma.services.BookingService;
import com.example.diploma.services.HotelService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class HotelController {
    private final HotelService hotelService;
    private final BookingService bookingService;

    @GetMapping("/hotel-info/{id}")
    public String hotelInfo(@PathVariable(name = "id") Long id, Model model, Principal principal){
        Hotel hotel = hotelService.getHotel(id);
        model.addAttribute("hotel", hotel);
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "hotel-info";
    }
}
