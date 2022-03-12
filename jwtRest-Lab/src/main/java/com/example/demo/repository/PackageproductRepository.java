package com.example.demo.repository;

import com.example.demo.model.Packageproduct;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PackageproductRepository extends JpaRepository<Packageproduct, Long> {
    List<Packageproduct> findByPackageid(long id);
    List<Packageproduct> findByProductid(long id);
}