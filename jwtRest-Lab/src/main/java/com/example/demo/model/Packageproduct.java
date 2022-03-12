package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Packageproduct {
    private Long id;
    private long packageid;
    private long productid;

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
    @Column(name = "PACKAGEID")
    public long getPackageid() {
        return packageid;
    }

    public void setPackageid(long packageid) {
        this.packageid = packageid;
    }

    @Basic
    @Column(name = "PRODUCTID")
    public long getProductid() {
        return productid;
    }

    public void setProductid(long productid) {
        this.productid = productid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Packageproduct that = (Packageproduct) o;
        return packageid == that.packageid && productid == that.productid && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, packageid, productid);
    }
}
