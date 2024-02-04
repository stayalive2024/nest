package com.app.homestay.controller;

import com.app.homestay.entity.Stay;
import com.app.homestay.entity.Owner;
import com.app.homestay.service.StayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class StayController {
    @Autowired
    private StayService stayService;

    @GetMapping("api/v1/stay/{id}")
    public Stay getStay(@PathVariable("id") long id){
        return stayService.getHomeStay(id).orElse(null);
    }
}
