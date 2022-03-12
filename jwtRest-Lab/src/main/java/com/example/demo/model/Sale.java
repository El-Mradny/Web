package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Sale {
    private Long id;
    private long productid;
    private int discountpercent;
    private Timestamp startdate;
    private Timestamp enddate;
    private String publish;

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
    @Column(name = "PRODUCTID")
    public long getProductid() {
        return productid;
    }

    public void setProductid(long productid) {
        this.productid = productid;
    }

    @Basic
    @Column(name = "DISCOUNTPERCENT")
    public int getDiscountpercent() {
        return discountpercent;
    }

    public void setDiscountpercent(int discountpercent) {
        this.discountpercent = discountpercent;
    }

    @Basic
    @Column(name = "STARTDATE")
    public Timestamp getStartdate() {
        return startdate;
    }

    public void setStartdate(Timestamp startdate) {
        this.startdate = startdate;
    }

    @Basic
    @Column(name = "ENDDATE")
    public Timestamp getEnddate() {
        return enddate;
    }

    public void setEnddate(Timestamp enddate) {
        this.enddate = enddate;
    }

    @Basic
    @Column(name = "PUBLISH")
    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Sale sale = (Sale) o;
        return productid == sale.productid && discountpercent == sale.discountpercent && Objects.equals(id, sale.id) && Objects.equals(startdate, sale.startdate) && Objects.equals(enddate, sale.enddate) && Objects.equals(publish, sale.publish);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, productid, discountpercent, startdate, enddate, publish);
    }
}
