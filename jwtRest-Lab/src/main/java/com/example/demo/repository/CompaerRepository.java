package com.example.demo.repository;

import com.example.demo.model.Compaer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CompaerRepository extends JpaRepository<Compaer, Long> {
    List<Compaer> findByUserid(String id);
    List<Compaer> findByProductidAndUserid(Long productId,String userId);
}