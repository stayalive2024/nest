package com.app.homestay.repository;

import com.app.homestay.entity.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location,Long> {
}
