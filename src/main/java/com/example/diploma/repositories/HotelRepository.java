package com.example.diploma.repositories;

import com.example.diploma.models.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<Hotel, Long> {
    Hotel findByName(String name);
}
