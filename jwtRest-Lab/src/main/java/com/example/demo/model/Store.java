package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Store {
    private Long id;
    private Long supplierid;
    private String userid;
    private Long productid;
    private Long productrealprice;
    private String totalpricepaid;
    private Timestamp paymentdate;
    private String note;
    private Long availableqty;

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
    @Column(name = "SUPPLIERID")
    public Long getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(Long supplierid) {
        this.supplierid = supplierid;
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
    @Column(name = "PRODUCTREALPRICE")
    public Long getProductrealprice() {
        return productrealprice;
    }

    public void setProductrealprice(Long productrealprice) {
        this.productrealprice = productrealprice;
    }

    @Basic
    @Column(name = "TOTALPRICEPAID")
    public String getTotalpricepaid() {
        return totalpricepaid;
    }

    public void setTotalpricepaid(String totalpricepaid) {
        this.totalpricepaid = totalpricepaid;
    }

    @Basic
    @Column(name = "PAYMENTDATE")
    public Timestamp getPaymentdate() {
        return paymentdate;
    }

    public void setPaymentdate(Timestamp paymentdate) {
        this.paymentdate = paymentdate;
    }

    @Basic
    @Column(name = "NOTE")
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Basic
    @Column(name = "AVAILABLEQTY")
    public Long getAvailableqty() {
        return availableqty;
    }

    public void setAvailableqty(Long availableqty) {
        this.availableqty = availableqty;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Store store = (Store) o;
        return Objects.equals(id, store.id) && Objects.equals(supplierid, store.supplierid) && Objects.equals(userid, store.userid) && Objects.equals(productid, store.productid) && Objects.equals(productrealprice, store.productrealprice) && Objects.equals(totalpricepaid, store.totalpricepaid) && Objects.equals(paymentdate, store.paymentdate) && Objects.equals(note, store.note) && Objects.equals(availableqty, store.availableqty);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, supplierid, userid, productid, productrealprice, totalpricepaid, paymentdate, note, availableqty);
    }
}
