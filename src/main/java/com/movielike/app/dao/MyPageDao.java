package com.movielike.app.dao;

import com.movielike.app.domain.ReviewDto;
import com.movielike.app.domain.ReviewScoreDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

@Repository
public class MyPageDao {
    @Autowired
    SqlSession session;

    String namespace="com.movielike.app.dao.reviewMapper.";

    public List<ReviewDto> selectReview(HashMap param) {
        return session.selectList(namespace + "selectReview", param);
    }

    public Integer selectReviewCount(HashMap param) {
        return session.selectOne(namespace + "selectReviewCount", param);
    }

    public List<ReviewScoreDto> selectReviewScore(ReviewDto reviewDto) {
        return session.selectList(namespace + "selectReviewGroupByScore", reviewDto);
    }

}

