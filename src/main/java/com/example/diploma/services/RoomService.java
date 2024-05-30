package com.example.diploma.services;

import com.example.diploma.models.HotelImage;
import com.example.diploma.models.RoomImage;
import com.example.diploma.models.Room;
import com.example.diploma.repositories.RoomRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class RoomService {
    private final RoomRepository roomRepository;

    public List<Room> list() {
        return roomRepository.findAll();
    }

    public void add(Room room, MultipartFile file1, MultipartFile file2,
                    MultipartFile file3, MultipartFile file4,
                    MultipartFile file5) throws IOException {
        RoomImage roomImage1;
        if (file1.getSize() != 0) {
            roomImage1 = toImageEntity(file1);
            roomImage1.setPreviewImage(true);
            room.addImageToRoom(roomImage1);
        }
        RoomImage roomImage2;
        if (file2.getSize() != 0) {
            roomImage2 = toImageEntity(file2);
            room.addImageToRoom(roomImage2);
        }
        RoomImage roomImage3;
        if (file3.getSize() != 0) {
            roomImage3 = toImageEntity(file3);
            room.addImageToRoom(roomImage3);
        }
        RoomImage roomImage4;
        if (file4.getSize() != 0) {
            roomImage4 = toImageEntity(file4);
            room.addImageToRoom(roomImage4);
        }
        RoomImage roomImage5;
        if (file5.getSize() != 0) {
            roomImage5 = toImageEntity(file5);
            room.addImageToRoom(roomImage5);
        }
        roomRepository.save(room);
    }

    private RoomImage toImageEntity(MultipartFile file) throws IOException {
        RoomImage image = new RoomImage();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }


    public void deleteRoom(Long id) {
        Room room = roomRepository.findById(id).orElse(null);
        roomRepository.delete(room);
    }

    public Room getRoom(Long id) {
        return roomRepository.findById(id).orElse(null);
    }

    public void updateRoom(Room room) {
        roomRepository.save(room);
    }
    public void updateRoom(Room room, MultipartFile file) throws IOException {
        RoomImage roomImage;
        if (file.getSize() != 0) {
            roomImage = toImageEntity(file);
            roomImage.setPreviewImage(true);
            room.addImageToRoom(roomImage);
        }
        roomRepository.save(room);
    }
}
