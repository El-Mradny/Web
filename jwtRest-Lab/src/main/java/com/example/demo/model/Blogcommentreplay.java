package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Blogcommentreplay {
    private Long id;
    private String replay;
    private String userid;
    private Long blogcommentid;
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
    @Column(name = "REPLAY")
    public String getReplay() {
        return replay;
    }

    public void setReplay(String replay) {
        this.replay = replay;
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
    @Column(name = "BLOGCOMMENTID")
    public Long getBlogcommentid() {
        return blogcommentid;
    }

    public void setBlogcommentid(Long blogcommentid) {
        this.blogcommentid = blogcommentid;
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
        Blogcommentreplay that = (Blogcommentreplay) o;
        return Objects.equals(id, that.id) && Objects.equals(replay, that.replay) && Objects.equals(userid, that.userid) && Objects.equals(blogcommentid, that.blogcommentid) && Objects.equals(commentdate, that.commentdate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, replay, userid, blogcommentid, commentdate);
    }
}
