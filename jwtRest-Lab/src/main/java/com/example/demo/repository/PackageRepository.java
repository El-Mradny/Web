package com.example.demo.repository;

import com.example.demo.model.Package;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PackageRepository extends JpaRepository<Package, Long> {
    List<Package> findByNameContaining(String name);
    List<Package> findByName(String name);
}