package com.example.demo.repository;

import com.example.demo.model.Compaer;
import com.example.demo.model.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WishlistRepository extends JpaRepository<Wishlist, Long> {
    List<Wishlist> findByUserid(String id);

    List<Wishlist> findByProductid(Long id);
    List<Wishlist> findByProductidAndUseridContains(Long productId, String userId);
    List<Wishlist> findByProductidAndUserid(Long productId, String userId);


    List<Wishlist> findByPackageidAndUseridContains(Long packageId, String userId);
    List<Wishlist> findByPackageidAndUserid(Long packageId, String userId);
}