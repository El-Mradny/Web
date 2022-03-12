package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class User {
    private String id;
    private String firstname;
    private String role;
    private String picture;
    private String gender;
    private String lastname;
    private Timestamp birthdate;
    private Timestamp createaccountdate;

    @Id
    @Column(name = "ID")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    @Basic
    @Column(name = "FIRSTNAME")
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    @Basic
    @Column(name = "ROLE")
    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Basic
    @Column(name = "PICTURE")
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Basic
    @Column(name = "GENDER")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "LASTNAME")
    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    @Basic
    @Column(name = "BIRTHDATE")
    public Timestamp getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Timestamp birthdate) {
        this.birthdate = birthdate;
    }

    @Basic
    @Column(name = "CREATEACCOUNTDATE")
    public Timestamp getCreateaccountdate() {
        return createaccountdate;
    }

    public void setCreateaccountdate(Timestamp createaccountdate) {
        this.createaccountdate = createaccountdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id) && Objects.equals(firstname, user.firstname) && Objects.equals(role, user.role) && Objects.equals(picture, user.picture) && Objects.equals(gender, user.gender) && Objects.equals(lastname, user.lastname) && Objects.equals(birthdate, user.birthdate) && Objects.equals(createaccountdate, user.createaccountdate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, firstname, role, picture, gender, lastname, birthdate, createaccountdate);
    }
}
