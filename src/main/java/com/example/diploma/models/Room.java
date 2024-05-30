package com.example.diploma.models;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@ToString
@Entity
@Table(name = "rooms")
@Data
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn(name = "hotel")
    private Hotel hotel;
    @Column(name = "type")
    private String type;
    @Column(name = "availability")
    private boolean isAvailable;
    @Column(name = "price_of_night")
    private int priceOfNight;
    @Column(name = "description")
    private String description;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
            mappedBy = "room")
    private List<RoomImage> roomImages = new ArrayList<>();

    public void addImageToRoom(RoomImage roomImage) {
        roomImage.setRoom(this);
        roomImages.add(roomImage);
    }
}
