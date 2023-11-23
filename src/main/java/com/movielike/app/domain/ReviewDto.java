package com.movielike.app.domain;

import java.util.Date;

public class ReviewDto {
    private int rvId;


    private int userId;
    private int movId;
    private int rvScore;
    private String rvContent;
    private String rvRegDate;
    private Date rvUpDate;
    private int rvLike;

    private String userNickname;

    private String movName;

    public String getMovName() {
        return movName;
    }

    public void setMovName(String movName) {
        this.movName = movName;
    }

    public void setRvId(int rvId) {
        this.rvId = rvId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setMovId(int movId) {
        this.movId = movId;
    }

    public void setRvScore(int rvScore) {
        this.rvScore = rvScore;
    }

    public void setRvContent(String rvContent) {
        this.rvContent = rvContent;
    }



    public void setRvUpDate(Date rvUpDate) {
        this.rvUpDate = rvUpDate;
    }

    public void setRvLike(int rvLike) {
        this.rvLike = rvLike;
    }

    public int getRvId() {
        return rvId;
    }

    public int getUserId() {
        return userId;
    }

    public int getMovId() {
        return movId;
    }

    public int getRvScore() {
        return rvScore;
    }

    public String getRvContent() {
        return rvContent;
    }


    public Date getRvUpDate() {
        return rvUpDate;
    }

    public int getRvLike() {
        return rvLike;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    public String getRvRegDate() {
        return rvRegDate;
    }

    public void setRvRegDate(String rvRegDate) {
        this.rvRegDate = rvRegDate;
    }

}
