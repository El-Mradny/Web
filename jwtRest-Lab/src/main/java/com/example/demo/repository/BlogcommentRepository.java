package com.example.demo.repository;

import com.example.demo.model.Blogcomment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogcommentRepository extends JpaRepository<Blogcomment, Long> {
    List<Blogcomment> findByBlogid(Long id);
    List<Blogcomment> findByBlogidAndUserid(Long id, String user) ;
    List<Blogcomment> findByUserid(String id);
}