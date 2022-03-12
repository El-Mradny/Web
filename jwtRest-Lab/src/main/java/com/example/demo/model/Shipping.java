package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Shipping {
    private Long id;
    private String userid;
    private String country;
    private String city;
    private Long pobox;
    private String address;
    private Long streetnum;
    private String email;
    private Long phonenumber;
    private String shippingmethod;
    private String longitude;
    private String latitude;
    private String name;

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
    @Column(name = "COUNTRY")
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Basic
    @Column(name = "CITY")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "POBOX")
    public Long getPobox() {
        return pobox;
    }

    public void setPobox(Long pobox) {
        this.pobox = pobox;
    }

    @Basic
    @Column(name = "ADDRESS")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "STREETNUM")
    public Long getStreetnum() {
        return streetnum;
    }

    public void setStreetnum(Long streetnum) {
        this.streetnum = streetnum;
    }

    @Basic
    @Column(name = "EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "PHONENUMBER")
    public Long getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(Long phonenumber) {
        this.phonenumber = phonenumber;
    }

    @Basic
    @Column(name = "SHIPPINGMETHOD")
    public String getShippingmethod() {
        return shippingmethod;
    }

    public void setShippingmethod(String shippingmethod) {
        this.shippingmethod = shippingmethod;
    }

    @Basic
    @Column(name = "LONGITUDE")
    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    @Basic
    @Column(name = "LATITUDE")
    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Shipping shipping = (Shipping) o;
        return Objects.equals(id, shipping.id) && Objects.equals(userid, shipping.userid) && Objects.equals(country, shipping.country) && Objects.equals(city, shipping.city) && Objects.equals(pobox, shipping.pobox) && Objects.equals(address, shipping.address) && Objects.equals(streetnum, shipping.streetnum) && Objects.equals(email, shipping.email) && Objects.equals(phonenumber, shipping.phonenumber) && Objects.equals(shippingmethod, shipping.shippingmethod) && Objects.equals(longitude, shipping.longitude) && Objects.equals(latitude, shipping.latitude) && Objects.equals(name, shipping.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, country, city, pobox, address, streetnum, email, phonenumber, shippingmethod, longitude, latitude, name);
    }
}
