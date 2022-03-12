package com.example.demo.repository;

import com.example.demo.model.Product;
import com.example.demo.model.Promotionemail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PromotionemailRepository extends JpaRepository<Promotionemail, Long> {
    List<Promotionemail> findByEmail(String email);
}