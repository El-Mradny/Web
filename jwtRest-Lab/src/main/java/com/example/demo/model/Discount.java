package com.example.demo.model;

import javax.persistence.*;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Discount {
    private Long id;
    private BigInteger discountvalue;
    private Timestamp startdate;
    private Timestamp enddate;
    private String publish;
    private String description;
    private String discountcode;

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
    @Column(name = "DISCOUNTVALUE")
    public BigInteger getDiscountvalue() {
        return discountvalue;
    }

    public void setDiscountvalue(BigInteger discountvalue) {
        this.discountvalue = discountvalue;
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

    @Basic
    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "DISCOUNTCODE")
    public String getDiscountcode() {
        return discountcode;
    }

    public void setDiscountcode(String discountcode) {
        this.discountcode = discountcode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Discount discount = (Discount) o;
        return Objects.equals(id, discount.id) && Objects.equals(discountvalue, discount.discountvalue) && Objects.equals(startdate, discount.startdate) && Objects.equals(enddate, discount.enddate) && Objects.equals(publish, discount.publish) && Objects.equals(description, discount.description) && Objects.equals(discountcode, discount.discountcode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, discountvalue, startdate, enddate, publish, description, discountcode);
    }
}
