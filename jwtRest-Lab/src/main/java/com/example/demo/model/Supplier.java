package com.example.demo.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Supplier {
    private Long id;
    private String userid;
    private String companyname;
    private String email;
    private String phone;
    private String fax;
    private String pobox;

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
    @Column(name = "COMPANYNAME")
    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
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
    @Column(name = "PHONE")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "FAX")
    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    @Basic
    @Column(name = "POBOX")
    public String getPobox() {
        return pobox;
    }

    public void setPobox(String pobox) {
        this.pobox = pobox;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Supplier supplier = (Supplier) o;
        return Objects.equals(id, supplier.id) && Objects.equals(userid, supplier.userid) && Objects.equals(companyname, supplier.companyname) && Objects.equals(email, supplier.email) && Objects.equals(phone, supplier.phone) && Objects.equals(fax, supplier.fax) && Objects.equals(pobox, supplier.pobox);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, companyname, email, phone, fax, pobox);
    }
}
