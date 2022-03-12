package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Blog {
    private Long id;
    private String title;
    private String text;
    private String auther;
    private Timestamp publishdate;
    private String image;
    private Long viewscount;
    private String readingtime;

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
    @Column(name = "TITLE")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "TEXT")
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Basic
    @Column(name = "AUTHER")
    public String getAuther() {
        return auther;
    }

    public void setAuther(String auther) {
        this.auther = auther;
    }

    @Basic
    @Column(name = "PUBLISHDATE")
    public Timestamp getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(Timestamp publishdate) {
        this.publishdate = publishdate;
    }

    @Basic
    @Column(name = "IMAGE")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "VIEWSCOUNT")
    public Long getViewscount() {
        return viewscount;
    }

    public void setViewscount(Long viewscount) {
        this.viewscount = viewscount;
    }

    @Basic
    @Column(name = "READINGTIME")
    public String getReadingtime() {
        return readingtime;
    }

    public void setReadingtime(String readingtime) {
        this.readingtime = readingtime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Blog blog = (Blog) o;
        return Objects.equals(id, blog.id) && Objects.equals(title, blog.title) && Objects.equals(text, blog.text) && Objects.equals(auther, blog.auther) && Objects.equals(publishdate, blog.publishdate) && Objects.equals(image, blog.image) && Objects.equals(viewscount, blog.viewscount) && Objects.equals(readingtime, blog.readingtime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, title, text, auther, publishdate, image, viewscount, readingtime);
    }
}
