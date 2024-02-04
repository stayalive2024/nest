package com.app.homestay.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name="contact_details")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name="ph_no1")
    private String phoneNumber1;
    @Column(name="ph_no2")
    private String phoneNumber2;
    @Column(name="ph_no3")
    private String phoneNumber3;
    @Column(name="email1")
    private String email1;
    @Column(name="email2")
    private String email2;
}
