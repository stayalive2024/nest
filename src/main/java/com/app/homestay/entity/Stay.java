package com.app.homestay.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "stay")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Stay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;

    @ManyToOne
    @JoinColumn(name="owner_id")
    @JsonBackReference(value="hs-owner-ref")
    private Owner owner;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "location_id",referencedColumnName = "id")
    private Location location;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "contact_id",referencedColumnName = "id")
    private Contact contact;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "rule_food_id",referencedColumnName = "id")
    private RuleFoodAmenitie rule;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "media_id",referencedColumnName = "id")
    private Media media;

    @OneToMany(mappedBy = "stay",cascade = CascadeType.ALL,orphanRemoval = true)
    @JsonManagedReference(value="hs-room-ref")
    private List<HsRoom> rooms;

    @Column(name="discount")
    private int discount;

    @Column(name="discount_type")
    private String discountType; // flat,percentage

    @Column(name="max_discount")
    private int max_discount;

    @Column(name="about")
    private String aboutStay;

}
