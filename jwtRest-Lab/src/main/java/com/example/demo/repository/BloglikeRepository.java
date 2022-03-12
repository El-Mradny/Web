package com.example.demo.repository;

import com.example.demo.model.Bloglike;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
public interface BloglikeRepository extends JpaRepository<Bloglike, Long> {
    List<Bloglike> findByBlogidAndUserid(Long id, String user) ;
    List<Bloglike> findByBlogid(Long id);

}