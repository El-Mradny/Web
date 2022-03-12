package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Cart {
    private Long id;
    private String status;
    private String userid;
    private Long paymentid;
    private Long shippingid;
    private Timestamp checkoutdate;
    private String orderstatus;
    private Double total;
    private Long discountid;
    private Long shippingcost;

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
    @Column(name = "STATUS")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
    @Column(name = "PAYMENTID")
    public Long getPaymentid() {
        return paymentid;
    }

    public void setPaymentid(Long paymentid) {
        this.paymentid = paymentid;
    }

    @Basic
    @Column(name = "SHIPPINGID")
    public Long getShippingid() {
        return shippingid;
    }

    public void setShippingid(Long shippingid) {
        this.shippingid = shippingid;
    }

    @Basic
    @Column(name = "CHECKOUTDATE")
    public Timestamp getCheckoutdate() {
        return checkoutdate;
    }

    public void setCheckoutdate(Timestamp checkoutdate) {
        this.checkoutdate = checkoutdate;
    }

    @Basic
    @Column(name = "ORDERSTATUS")
    public String getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(String orderstatus) {
        this.orderstatus = orderstatus;
    }

    @Basic
    @Column(name = "TOTAL")
    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    @Basic
    @Column(name = "DISCOUNTID")
    public Long getDiscountid() {
        return discountid;
    }

    public void setDiscountid(Long discountid) {
        this.discountid = discountid;
    }

    @Basic
    @Column(name = "SHIPPINGCOST")
    public Long getShippingcost() {
        return shippingcost;
    }

    public void setShippingcost(Long shippingcost) {
        this.shippingcost = shippingcost;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cart cart = (Cart) o;
        return Objects.equals(id, cart.id) && Objects.equals(status, cart.status) && Objects.equals(userid, cart.userid) && Objects.equals(paymentid, cart.paymentid) && Objects.equals(shippingid, cart.shippingid) && Objects.equals(checkoutdate, cart.checkoutdate) && Objects.equals(orderstatus, cart.orderstatus) && Objects.equals(total, cart.total) && Objects.equals(discountid, cart.discountid) && Objects.equals(shippingcost, cart.shippingcost);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, status, userid, paymentid, shippingid, checkoutdate, orderstatus, total, discountid, shippingcost);
    }
}
