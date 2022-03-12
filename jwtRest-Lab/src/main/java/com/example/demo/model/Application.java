package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Application {
    private Long id;
    private String cv;
    private String userid;
    private String roleapplying;
    private Timestamp applieddate;
    private String status;

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
    @Column(name = "CV")
    public String getCv() {
        return cv;
    }

    public void setCv(String cv) {
        this.cv = cv;
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
    @Column(name = "ROLEAPPLYING")
    public String getRoleapplying() {
        return roleapplying;
    }

    public void setRoleapplying(String roleapplying) {
        this.roleapplying = roleapplying;
    }

    @Basic
    @Column(name = "APPLIEDDATE")
    public Timestamp getApplieddate() {
        return applieddate;
    }

    public void setApplieddate(Timestamp applieddate) {
        this.applieddate = applieddate;
    }

    @Basic
    @Column(name = "STATUS")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Application that = (Application) o;
        return Objects.equals(id, that.id) && Objects.equals(cv, that.cv) && Objects.equals(userid, that.userid) && Objects.equals(roleapplying, that.roleapplying) && Objects.equals(applieddate, that.applieddate) && Objects.equals(status, that.status);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, cv, userid, roleapplying, applieddate, status);
    }
}
