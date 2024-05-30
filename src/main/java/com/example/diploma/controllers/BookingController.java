package com.example.diploma.controllers;

import com.example.diploma.models.Booking;
import com.example.diploma.models.Hotel;
import com.example.diploma.models.Room;
import com.example.diploma.models.User;
import com.example.diploma.services.BookingService;
import com.example.diploma.services.RoomService;
import com.example.diploma.services.TemplateHelper;
import com.example.diploma.services.UserService;
import lombok.RequiredArgsConstructor;
import org.dom4j.rule.Mode;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class BookingController {
    private final BookingService bookingService;
    private final UserService userService;
    private final RoomService roomService;

    @GetMapping("/my-orders")
    public String orders(Principal principal, Model model) {
        User user = bookingService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("bookings", user.getBookings());
        model.addAttribute("helper", new TemplateHelper());
        return "orders";
    }

    @GetMapping("/create-booking")
    public String createBooking(@RequestParam(name = "room") Long room_id,
                                Model model, Principal principal) {

        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        Room room = roomService.getRoom(room_id);
        model.addAttribute("room", room);
        model.addAttribute("hotelName",room.getHotel().getName());
        return "new-booking";
    }

    @PostMapping("/create-booking")
    public String addBookingToBD(@RequestParam(name = "room_id") Long room_id, Principal principal,
                                 @RequestParam(name = "checkin") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkin,
                                 @RequestParam(name = "checkout") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkout) {
        Booking booking = new Booking();
        Room room = roomService.getRoom(room_id);
        booking.setRoom(room);
        booking.setUser(bookingService.getUserByPrincipal(principal));
        booking.setDateOfStart(checkin.atStartOfDay());
        booking.setDateOfFinish(checkout.atStartOfDay());
        booking.setConfirmed(false);
//        room.setAvailable(false);
        Period period = Period.between(checkin, checkout);
        int days = period.getDays();
        booking.setTotalPrice(room.getPriceOfNight() * days);
        booking.setActual(true);
        bookingService.saveBooking(booking);
        return "redirect:/my-orders";
    }
    @PostMapping("/cancel-order/{id}")
    public String cancelBooking(@PathVariable("id") Long id, HttpServletRequest request) {
        Booking booking = bookingService.getBooking(id);
        booking.setConfirmed(false);
        booking.getRoom().setAvailable(true);
        booking.setActual(false);
        bookingService.saveBooking(booking);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @GetMapping("/get-unavailable-dates")
    public ResponseEntity<List<String>> getUnavailableDates(@RequestParam Long roomId) {
        List<LocalDate> unavailableDates = bookingService.getUnavailableDatesForRoom(roomId);
        List<String> formattedDates = unavailableDates.stream()
                .map(date -> date.toString())
                .collect(Collectors.toList());
        return ResponseEntity.ok(formattedDates);
    }
}
