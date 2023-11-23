package com.movielike.app.dao;

import com.movielike.app.domain.ReviewDto;
import com.movielike.app.domain.ReviewScoreDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyPageDao {
    @Autowired
    SqlSession session;

    String namespace="com.movielike.app.dao.reviewMapper.";

    public List<ReviewDto> selectReview(ReviewDto reviewDto) {
        return session.selectList(namespace + "selectReview", reviewDto);
    }

    public List<ReviewScoreDto> selectReviewScore(ReviewDto reviewDto) {
        return session.selectList(namespace + "selectReviewGroupByScore", reviewDto);
    }

}

