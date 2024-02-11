package com.app.homestay.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "hs_room")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class HsRoom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name="title")
    private String title;

    @ManyToOne
    @JoinColumn(name="stay_id")
    @JsonBackReference(value="hs-room-ref")
    private Stay stay;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "media_id",referencedColumnName = "id")
    private Media media;

    @Column(name="type")
    private String type;

    @Column(name="capacity")
    private int capacity;

    @Column(name="person_cost")
    private int personCost;

    @Column(name="discount")
    private int discount;

    @Column(name="discount_type")
    private String discountType; // flat,percentage

    @Column(name="other_info")
    private String otherInfo;

    @Column(name="bed_title")
    private String bedTitle;

    // will store object [title{[string1,string2]},title{[string1,string2]}]
    @Column(name="amenity")
    private String amenity;

}
