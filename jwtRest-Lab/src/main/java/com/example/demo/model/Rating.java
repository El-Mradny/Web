package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Rating {
    private Long id;
    private String userid;
    private Long productid;
    private String reviwecomment;
    private Long stars;
    private String image;
    private Timestamp ratingdate;

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
    @Column(name = "USERID")
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    @Basic
    @Column(name = "PRODUCTID")
    public Long getProductid() {
        return productid;
    }

    public void setProductid(Long productid) {
        this.productid = productid;
    }

    @Basic
    @Column(name = "REVIWECOMMENT")
    public String getReviwecomment() {
        return reviwecomment;
    }

    public void setReviwecomment(String reviwecomment) {
        this.reviwecomment = reviwecomment;
    }

    @Basic
    @Column(name = "STARS")
    public Long getStars() {
        return stars;
    }

    public void setStars(Long stars) {
        this.stars = stars;
    }

    @Basic
    @Column(name = "IMAGE")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "RATINGDATE")
    public Timestamp getRatingdate() {
        return ratingdate;
    }

    public void setRatingdate(Timestamp ratingdate) {
        this.ratingdate = ratingdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Rating rating = (Rating) o;
        return Objects.equals(id, rating.id) && Objects.equals(userid, rating.userid) && Objects.equals(productid, rating.productid) && Objects.equals(reviwecomment, rating.reviwecomment) && Objects.equals(stars, rating.stars) && Objects.equals(image, rating.image) && Objects.equals(ratingdate, rating.ratingdate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, productid, reviwecomment, stars, image, ratingdate);
    }
}
