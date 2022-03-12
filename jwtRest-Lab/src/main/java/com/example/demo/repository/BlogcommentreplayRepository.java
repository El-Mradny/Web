package com.example.demo.repository;

import com.example.demo.model.Blogcommentreplay;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
public interface BlogcommentreplayRepository extends JpaRepository<Blogcommentreplay, Long> {
    List<Blogcommentreplay> findByBlogcommentid(Long id);


    List<Blogcommentreplay> findByUserid(String id);

}