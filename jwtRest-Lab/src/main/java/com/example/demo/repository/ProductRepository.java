package com.example.demo.repository;

import com.example.demo.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByNameContaining(String name);
    List<Product> findByOrderByPriceAsc();
    List<Product> findByOrderByPriceDesc();
    List<Product> findByOrderByDateAsc();
    List<Product> findByOrderByDateDesc();
    List<Product> findByCategory(String category);
    List<Product> findByCategoryOrderByPriceDesc(String category);
    List<Product> findByCategoryOrderByPriceAsc(String category);
    List<Product> findByCategoryOrderByDateAsc(String category);
    List<Product> findByCategoryOrderByDateDesc(String category);
    List<Product> findByNameContainingIgnoreCase(String name);
    List<Product> findByName(String name);

    List<Product> findByOrderBySoldcountDesc();
    List<Product> findByCategoryOrderBySoldcountDesc(String category);

}