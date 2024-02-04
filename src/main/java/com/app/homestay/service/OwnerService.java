package com.app.homestay.service;

import com.app.homestay.entity.Owner;
import com.app.homestay.repository.OwnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OwnerService {
    @Autowired
    private OwnerRepository ownerRepository;

    public Owner createOwner(Owner owner){
        return ownerRepository.save(owner);
    }

    public List<Owner> getOwnerDetails(){
        return ownerRepository.findAll();
    }

}
