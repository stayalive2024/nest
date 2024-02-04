package com.app.homestay.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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
    @JoinColumn(name="ownerId")
    @JsonBackReference(value="hs-ref")
    private Owner owner;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "locationId",referencedColumnName = "id")
    private Location location;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "contactId",referencedColumnName = "id")
    private Contact contact;


}
