package com.example.diploma.models;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@ToString
@Entity
@Table(name = "hotels")
@Data
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "address")
    private String address;
    @Column(name = "contact_data")
    private String contactData;
    @Column(name = "description")
    private String description;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
            mappedBy = "hotel")
    private List<Room> rooms = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
            mappedBy = "hotel")
    private List<HotelImage> hotelImages = new ArrayList<>();
    public void addImageToHotel(HotelImage image) {
        image.setHotel(this);
        hotelImages.add(image);
    }
    public void addRoomToHotel(Room room) {
        room.setHotel(this);
        rooms.add(room);
    }
}
