package com.example.diploma.services;

import com.example.diploma.models.Hotel;
import com.example.diploma.models.HotelImage;
import com.example.diploma.models.Room;
import com.example.diploma.repositories.HotelRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class HotelService {
    private final HotelRepository hotelRepository;

    public List<Hotel> list() {
        return hotelRepository.findAll();
    }

    public void add(Hotel hotel, MultipartFile file) throws IOException {
        HotelImage hotelImage1;
        if (file.getSize() != 0) {
            hotelImage1 = toImageEntity(file);
            hotelImage1.setPreviewImage(true);
            hotel.addImageToHotel(hotelImage1);
        }
        hotelRepository.save(hotel);
    }
    private HotelImage toImageEntity(MultipartFile file) throws IOException {
        HotelImage image = new HotelImage();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteHotel(Long id) {
        Hotel hotel = hotelRepository.findById(id).orElse(null);
        hotelRepository.delete(hotel);
    }

    public Hotel getHotel(Long id) {
        return hotelRepository.findById(id).orElse(null);
    }

    public void updateHotel(Hotel hotel, MultipartFile file) throws IOException {
        HotelImage hotelImage;
        if (file.getSize() != 0) {
            hotelImage = toImageEntity(file);
            hotelImage.setPreviewImage(true);
            hotel.addImageToHotel(hotelImage);
        }
        hotelRepository.save(hotel);
    }
    public void updateHotel(Hotel hotel) {
        hotelRepository.save(hotel);
    }

    public Hotel getHotelByName(String name) {
        return hotelRepository.findByName(name);
    }

}
