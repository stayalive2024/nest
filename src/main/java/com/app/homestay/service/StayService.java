package com.app.homestay.service;

import com.app.homestay.entity.Stay;
import com.app.homestay.repository.StayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class StayService {
    @Autowired
    private StayRepository stayRepository;


    public Optional<Stay> getHomeStay(long id){
        return stayRepository.findById(id);
    }

}
