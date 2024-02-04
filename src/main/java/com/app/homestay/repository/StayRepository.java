package com.app.homestay.repository;

import com.app.homestay.entity.Stay;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StayRepository extends JpaRepository<Stay,Long> {
}
