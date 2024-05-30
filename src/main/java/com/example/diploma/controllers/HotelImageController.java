package com.example.diploma.controllers;

import com.example.diploma.models.HotelImage;
import com.example.diploma.repositories.HotelImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.ByteArrayInputStream;

@Controller
@RequiredArgsConstructor
public class HotelImageController {
    private final HotelImageRepository hotelImageRepository;

    @GetMapping("/hotel_images/{id}")
    private ResponseEntity<?> getImageById(@PathVariable Long id) {
        HotelImage image = hotelImageRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .header("fileName", image.getOriginalFileName())
                .contentType(MediaType.valueOf(image.getContentType()))
                .contentLength(image.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(image.getBytes())));
    }
}
