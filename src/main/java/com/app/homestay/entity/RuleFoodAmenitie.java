package com.app.homestay.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="rule_food")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class RuleFoodAmenitie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    // will store object [title{[string1,string2]},title{[string1,string2]}]
    @Column(name="rule")
    private String rule;

    // will store object [title{[string1,string2]},title{[string1,string2]}]
    @Column(name="food")
    private String food;

    // will store object [title{[string1,string2]},title{[string1,string2]}]
    @Column(name="amenity")
    private String amenity;

}
