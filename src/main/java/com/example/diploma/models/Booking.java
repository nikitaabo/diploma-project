package com.example.diploma.models;

import lombok.Data;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "bookings")
@Data
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private Room room;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    private LocalDateTime dateOfCreated;
    @Column(name = "start_of_booking")
    private LocalDateTime dateOfStart;
    @Column(name = "finish_of_booking")
    private LocalDateTime dateOfFinish;
    @Column(name = "total_price")
    private int totalPrice;
    @Column(name = "confirmation")
    private boolean isConfirmed;
    @Column(name = "relevance")
    private boolean isActual;

    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }
}
