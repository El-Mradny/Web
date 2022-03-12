package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Blogcomment {
    private Long id;
    private String comment;
    private String userid;
    private Long blogid;
    private Timestamp commentdate;

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
    @Column(name = "COMMENT")
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
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
    @Column(name = "BLOGID")
    public Long getBlogid() {
        return blogid;
    }

    public void setBlogid(Long blogid) {
        this.blogid = blogid;
    }

    @Basic
    @Column(name = "COMMENTDATE")
    public Timestamp getCommentdate() {
        return commentdate;
    }

    public void setCommentdate(Timestamp commentdate) {
        this.commentdate = commentdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Blogcomment that = (Blogcomment) o;
        return Objects.equals(id, that.id) && Objects.equals(comment, that.comment) && Objects.equals(userid, that.userid) && Objects.equals(blogid, that.blogid) && Objects.equals(commentdate, that.commentdate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, comment, userid, blogid, commentdate);
    }
}
