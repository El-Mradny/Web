package com.example.demo.repository;

import com.example.demo.model.Compaer;
import com.example.demo.model.Faq;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FaqRepository extends JpaRepository<Faq, Long> {
    List<Faq> findByUsername(String id);
}