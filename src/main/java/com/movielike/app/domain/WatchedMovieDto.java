package com.movielike.app.domain;

public class WatchedMovieDto {
    private int movId;
    private int userId;

    private int mlId;

    public int getMovId() {
        return movId;
    }

    public void setMovId(int movId) {
        this.movId = movId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMlId() {
        return mlId;
    }

    public void setMlId(int mlId) {
        this.mlId = mlId;
    }


}
