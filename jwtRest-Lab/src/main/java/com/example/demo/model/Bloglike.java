package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Bloglike {
    private Long id;
    private Integer likecount;
    private Integer dislikecount;
    private String userid;
    private Long blogid;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "LIKECOUNT")
    public Integer getLikecount() {
        return likecount;
    }

    public void setLikecount(Integer likecount) {
        this.likecount = likecount;
    }

    @Basic
    @Column(name = "DISLIKECOUNT")
    public Integer getDislikecount() {
        return dislikecount;
    }

    public void setDislikecount(Integer dislikecount) {
        this.dislikecount = dislikecount;
    }

    @Basic
    @Column(name = "USERID")
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    @Basic
    @Column(name = "BLOGID")
    public Long getBlogid() {
        return blogid;
    }

    public void setBlogid(Long blogid) {
        this.blogid = blogid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bloglike bloglike = (Bloglike) o;
        return Objects.equals(id, bloglike.id) && Objects.equals(likecount, bloglike.likecount) && Objects.equals(dislikecount, bloglike.dislikecount) && Objects.equals(userid, bloglike.userid) && Objects.equals(blogid, bloglike.blogid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, likecount, dislikecount, userid, blogid);
    }
}
