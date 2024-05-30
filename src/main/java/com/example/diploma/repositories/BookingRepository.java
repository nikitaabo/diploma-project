package com.example.diploma.repositories;

import com.example.diploma.models.Booking;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookingRepository extends JpaRepository<Booking, Long> {
    List<Booking> findBookingsByRoomId(Long id);

}
