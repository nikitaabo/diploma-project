package com.example.diploma.controllers;

import com.example.diploma.models.Room;
import com.example.diploma.services.BookingService;
import com.example.diploma.services.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    private final BookingService bookingService;

    @GetMapping("/room-info/{id}")
    public String hotelInfo(@PathVariable(name = "id") Long id, Model model, Principal principal){
        Room room = roomService.getRoom(id);
        model.addAttribute("room", room);
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "room-info";
    }

}
