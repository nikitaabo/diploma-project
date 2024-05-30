package com.example.diploma.controllers;

import com.example.diploma.models.HotelImage;
import com.example.diploma.models.RoomImage;
import com.example.diploma.repositories.HotelImageRepository;
import com.example.diploma.repositories.RoomImageRepository;
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
public class RoomImageController {
    private final RoomImageRepository roomImageRepository;

    @GetMapping("/room_images/{id}")
    private ResponseEntity<?> getImageById(@PathVariable Long id) {
        RoomImage image = roomImageRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .header("fileName", image.getOriginalFileName())
                .contentType(MediaType.valueOf(image.getContentType()))
                .contentLength(image.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(image.getBytes())));
    }
}
