package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Compaer {
    private Long id;
    private String userid;
    private Long productid;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Compaer compaer = (Compaer) o;
        return Objects.equals(id, compaer.id) && Objects.equals(userid, compaer.userid) && Objects.equals(productid, compaer.productid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, productid);
    }
}
