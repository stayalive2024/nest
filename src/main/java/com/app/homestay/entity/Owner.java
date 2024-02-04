package com.app.homestay.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name="hs_owner")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Owner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String full_name;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "contactId",referencedColumnName = "id")
    private Contact contact;
    @OneToMany(mappedBy = "id",cascade = CascadeType.ALL,orphanRemoval = true)
    @JsonManagedReference(value="hs-ref")
    private List<Stay> stays;

}
