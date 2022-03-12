package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Payment {
    private Long id;
    private String method;
    private String cardnumber;
    private String cardholdername;
    private Long cvccode;
    private Timestamp expirydate;

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
    @Column(name = "METHOD")
    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    @Basic
    @Column(name = "CARDNUMBER")
    public String getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    @Basic
    @Column(name = "CARDHOLDERNAME")
    public String getCardholdername() {
        return cardholdername;
    }

    public void setCardholdername(String cardholdername) {
        this.cardholdername = cardholdername;
    }

    @Basic
    @Column(name = "CVCCODE")
    public Long getCvccode() {
        return cvccode;
    }

    public void setCvccode(Long cvccode) {
        this.cvccode = cvccode;
    }

    @Basic
    @Column(name = "EXPIRYDATE")
    public Timestamp getExpirydate() {
        return expirydate;
    }

    public void setExpirydate(Timestamp expirydate) {
        this.expirydate = expirydate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Payment payment = (Payment) o;
        return Objects.equals(id, payment.id) && Objects.equals(method, payment.method) && Objects.equals(cardnumber, payment.cardnumber) && Objects.equals(cardholdername, payment.cardholdername) && Objects.equals(cvccode, payment.cvccode) && Objects.equals(expirydate, payment.expirydate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, method, cardnumber, cardholdername, cvccode, expirydate);
    }
}
