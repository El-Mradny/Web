package com.example.demo.repository;

import com.example.demo.model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Long> {
    List<Cart> findByUseridAndStatus(String userid, String status);
    List <Cart> findByUserid(String id);
    List <Cart> findByUseridAndStatusAndOrderstatus(String userid, String status,String Order);
    List<Cart> findByUseridAndId(String userid, long id);

    List<Cart> findByShippingid( long id);
    List<Cart> findByPaymentid(long id);
}