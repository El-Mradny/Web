package com.example.demo.repository;

import com.example.demo.model.Cartitem;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
public interface CartitemRepository extends JpaRepository<Cartitem, Long> {
    List<Cartitem> findByProductid(Long id);
    List<Cartitem> findByProductidAndCartid(Long productid, Long cartid);
    List<Cartitem> findByCartid(Long id);
    List<Cartitem> findByPackageidAndCartid(Long packageid, Long cartid);
}
