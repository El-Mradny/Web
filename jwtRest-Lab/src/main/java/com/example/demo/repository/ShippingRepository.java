package com.example.demo.repository;

import com.example.demo.model.Sale;
import com.example.demo.model.Shipping;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ShippingRepository extends JpaRepository<Shipping, Long> {
    List<Shipping> findByUserid(String id);
}