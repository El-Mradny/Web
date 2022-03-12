package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Wishlist {
    private Long id;
    private String userid;
    private Long packageid;
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
    @Column(name = "PACKAGEID")
    public Long getPackageid() {
        return packageid;
    }

    public void setPackageid(Long packageid) {
        this.packageid = packageid;
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
        Wishlist wishlist = (Wishlist) o;
        return Objects.equals(id, wishlist.id) && Objects.equals(userid, wishlist.userid) && Objects.equals(packageid, wishlist.packageid) && Objects.equals(productid, wishlist.productid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, packageid, productid);
    }
}
