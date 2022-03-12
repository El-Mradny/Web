package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Cartitem {
    private Long id;
    private long cartid;
    private Long productid;
    private Long packageid;
    private Long productqty;
    private Long packageqty;

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
    @Column(name = "CARTID")
    public long getCartid() {
        return cartid;
    }

    public void setCartid(long cartid) {
        this.cartid = cartid;
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
    @Column(name = "PACKAGEID")
    public Long getPackageid() {
        return packageid;
    }

    public void setPackageid(Long packageid) {
        this.packageid = packageid;
    }

    @Basic
    @Column(name = "PRODUCTQTY")
    public Long getProductqty() {
        return productqty;
    }

    public void setProductqty(Long productqty) {
        this.productqty = productqty;
    }

    @Basic
    @Column(name = "PACKAGEQTY")
    public Long getPackageqty() {
        return packageqty;
    }

    public void setPackageqty(Long packageqty) {
        this.packageqty = packageqty;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cartitem cartitem = (Cartitem) o;
        return cartid == cartitem.cartid && Objects.equals(id, cartitem.id) && Objects.equals(productid, cartitem.productid) && Objects.equals(packageid, cartitem.packageid) && Objects.equals(productqty, cartitem.productqty) && Objects.equals(packageqty, cartitem.packageqty);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, cartid, productid, packageid, productqty, packageqty);
    }
}
