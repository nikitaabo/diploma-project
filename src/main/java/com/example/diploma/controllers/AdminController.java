package com.example.diploma.controllers;

import com.example.diploma.models.Booking;
import com.example.diploma.models.Hotel;
import com.example.diploma.models.Room;
import com.example.diploma.models.User;
import com.example.diploma.services.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;


@Controller
@RequiredArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    private final UserService userService;
    private final BookingService bookingService;
    private final HotelService hotelService;
    private final RoomService roomService;

    @GetMapping("/admin")
    public String admin(Model model, Principal principal) {
        model.addAttribute("users", userService.list());
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        model.addAttribute("hotels", hotelService.list());
        model.addAttribute("rooms", roomService.list());
        return "admin";
    }

    @PostMapping("/admin/delete-user/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.deleteUser(id);
        return "redirect:/admin";
    }

    @PostMapping("/admin/delete-hotel/{id}")
    public String deleteHotel(@PathVariable("id") Long id) {
        hotelService.deleteHotel(id);
        return "redirect:/admin";
    }

    //    @GetMapping("/admin/user/edit/{user}")
//    public String userEdit(@PathVariable("user") User user, Model model) {
//        model.addAttribute("user", user);
//        model.addAttribute("roles", Role.values());
//        return "user-edit";
//    }
    @GetMapping("/admin/hotel/add")
    public String addHotel(Model model, Principal principal) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "hotel-add";
    }

    @PostMapping("/admin/add-hotel")
    public String addHotelToBD(@RequestParam("image") MultipartFile image, Hotel hotel) throws IOException {
        hotelService.add(hotel, image);
        return "redirect:/admin";
    }

    @GetMapping("/admin/bookings/{id}")
    public String userBookings(@RequestParam("user_id") Long id, Model model) {
        User user = bookingService.getUser(id);
        model.addAttribute("user", user);
        model.addAttribute("bookings", user.getBookings());
        model.addAttribute("helper", new TemplateHelper());
        return "user-bookings";
    }

    @GetMapping("/admin/edit-hotel/{id}")
    public String editHotel(@PathVariable Long id, Model model, Principal principal) {
        Hotel hotel = hotelService.getHotel(id);
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        model.addAttribute("hotel", hotel);
        model.addAttribute("hotelImages", hotel.getHotelImages());
        return "hotel-edit";
    }
    @GetMapping("/admin/edit-room/{id}")
    public String editRoom(@PathVariable Long id, Model model, Principal principal) {
        Room room = roomService.getRoom(id);
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        model.addAttribute("room", room);
        model.addAttribute("roomImages", room.getRoomImages());
        return "room-edit";
    }

    @PostMapping("/update-hotel")
    public String updateHotel(@RequestParam(name = "image", required = false) MultipartFile image, Hotel hotel,
                              @RequestParam("id") Long id) throws IOException {
        Hotel existingHotel = hotelService.getHotel(id);
        existingHotel.setName(hotel.getName());
        existingHotel.setAddress(hotel.getAddress());
        existingHotel.setContactData(hotel.getContactData());
        existingHotel.setDescription(hotel.getDescription());
        if (image == null) {
            hotelService.updateHotel(existingHotel);
        } else hotelService.updateHotel(existingHotel, image);
        return "redirect:/admin";
    }
    @PostMapping("/update-room")
    public String updateRoom(@RequestParam(name = "image", required = false) MultipartFile image,
                              @RequestParam("id") Long id,
                             @RequestParam("name")  String text,
                             @RequestParam("price") int price,
                             @RequestParam("description") String description) throws IOException {
        Room existingRoom = roomService.getRoom(id);
        existingRoom.setType(text);
        existingRoom.setPriceOfNight(price);
        existingRoom.setDescription(description);
        if (image == null) {
            roomService.updateRoom(existingRoom);
        } else roomService.updateRoom(existingRoom, image);
        return "redirect:/admin";
    }

    @GetMapping("/admin/room/add")
    public String addRoom(Model model, Principal principal) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "room-add";
    }

    @PostMapping("/admin/add-room")
    public String addRoomToBD(@RequestParam("image1") MultipartFile image1,
                              @RequestParam("image2") MultipartFile image2,
                              @RequestParam("image3") MultipartFile image3,
                              @RequestParam("image4") MultipartFile image4,
                              @RequestParam("image5") MultipartFile image5,
                              @RequestParam("hotel") String hotelName,
                              @RequestParam("type") String type,
                              @RequestParam("isAvailable") Boolean isAvailable,
                              @RequestParam("price") int price,
                              @RequestParam("description") String description
                              ) throws IOException {
        Room room = new Room();
        Hotel hotel = hotelService.getHotelByName(hotelName);
        room.setHotel(hotel);
        room.setType(type);
        room.setAvailable(isAvailable);
        room.setPriceOfNight(price);
        room.setDescription(description);
        hotel.addRoomToHotel(room);
        roomService.add(room, image1, image2, image3, image4, image5);
        return "redirect:/admin";
    }

    @PostMapping("/admin/delete-room/{id}")
    public String deleteRoom(@PathVariable("id") Long id) {
        roomService.deleteRoom(id);
        return "redirect:/admin";
    }
    @PostMapping("/confirm-booking/{id}")
    public String confirmBooking(@PathVariable("id") Long id, HttpServletRequest request) {
        Booking booking = bookingService.getBooking(id);
        booking.setConfirmed(true);
        bookingService.saveBooking(booking);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
    @PostMapping("/cancel-booking/{id}")
    public String cancelBooking(@PathVariable("id") Long id, HttpServletRequest request) {
        Booking booking = bookingService.getBooking(id);
        booking.setConfirmed(false);
        booking.getRoom().setAvailable(true);
        booking.setActual(false);
        bookingService.saveBooking(booking);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

}
