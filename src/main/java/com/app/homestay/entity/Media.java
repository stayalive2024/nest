package com.app.homestay.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="media")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Media {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //will store object [{tag,url,title,desc},{tag,url,title,desc}]
    @Column(name="video")
    private String video;

    //will store object [{tag,url,title,desc},{tag,url,title,desc}]
    @Column(name="image")
    private String image;

}
