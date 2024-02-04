package com.app.homestay.controller;

import com.app.homestay.entity.Owner;
import com.app.homestay.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/owner")
public class OwnerController {
    @Autowired
    private OwnerService ownerService;
    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    public Owner createOwner(@RequestBody Owner owner){
        return ownerService.createOwner(owner);
    }
    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Owner> getOwnerDetails(){
        return ownerService.getOwnerDetails();
    }
}
