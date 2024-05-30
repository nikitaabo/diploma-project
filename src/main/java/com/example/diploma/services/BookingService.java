package com.example.diploma.services;

import com.example.diploma.models.Booking;
import com.example.diploma.models.User;
import com.example.diploma.repositories.BookingRepository;
import com.example.diploma.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class BookingService {
    private final BookingRepository bookingRepository;
    private final UserRepository userRepository;

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void saveBooking(Booking booking) {
        bookingRepository.save(booking);
    }

    public User getUser(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public Booking getBooking(Long id) {
        return bookingRepository.findById(id).orElse(null);
    }

    public List<LocalDate> getUnavailableDatesForRoom(Long roomId) {
        List<Booking> bookings = bookingRepository.findBookingsByRoomId(roomId);
        for (Booking booking: bookings) {
            if(booking.isActual()) {
                System.out.println(booking.getDateOfStart());
                System.out.println(booking.getDateOfFinish());
            }
        }
        List<LocalDate> unavailableDates = new ArrayList<>();
        for (Booking booking : bookings) {
            if(booking.isActual()) {
                LocalDate start = booking.getDateOfStart().toLocalDate();
                LocalDate end = booking.getDateOfFinish().toLocalDate();
                while (!start.isAfter(end)) {
                    unavailableDates.add(start);
                    start = start.plusDays(1);
                }
            }
        }
        return unavailableDates;
    }
}
