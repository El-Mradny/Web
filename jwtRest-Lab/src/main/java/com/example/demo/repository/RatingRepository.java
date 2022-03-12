package com.example.demo.repository;

import com.example.demo.model.Cartitem;
import com.example.demo.model.Feedback;
import com.example.demo.model.Rating;
import com.example.demo.model.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RatingRepository extends JpaRepository<Rating, Long> {
    List<Rating> findByProductid(Long id);
    List<Rating> findByProductidAndUserid(Long productId, String userId);
    List<Rating> findByUserid(String id);
}