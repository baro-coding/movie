package com.movielike.app.service;

//import com.movielike.app.dao.MyListDao;
import com.movielike.app.dao.GenreDao;
import com.movielike.app.dao.MyListDao;
import com.movielike.app.dao.MyPageDao;
//import com.movielike.app.dao.WatchedMovieDao;
//import com.movielike.app.domain.MyListDto;
import com.movielike.app.dao.WatchedMovieDao;
import com.movielike.app.domain.*;
//import com.movielike.app.domain.ReviewScoreDto;
//import com.movielike.app.domain.WatchedMovieDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MyPageService {
    @Autowired
    MyPageDao myPageDao;

    @Autowired
    WatchedMovieDao watchedMovieDao;

    @Autowired
    MyListDao myListDao;

    @Autowired
    GenreDao genreDao;

    @Autowired
    SessionService sessionService;

    public List<ReviewDto> reviewFind() {
        ReviewDto reviewDto = new ReviewDto();
        reviewDto.setUserId(sessionService.getLoginId());

        return myPageDao.selectReview(reviewDto);
    }

    public List<WatchedMovieDto> watchedMovieFind() {
        WatchedMovieDto watchedMovieDto = new WatchedMovieDto();
        watchedMovieDto.setUserId(sessionService.getLoginId());

        return watchedMovieDao.WatchedMovie(watchedMovieDto);
    }

    public List<MyListDto> myListFind() {
        MyListDto myListDto = new MyListDto();
        myListDto.setUserId(sessionService.getLoginId());

        return myListDao.myList(myListDto);
    }

    public List<ReviewScoreDto> reviewScoreFind() {
        ReviewDto reviewDto = new ReviewDto();
        reviewDto.setUserId(sessionService.getLoginId());

        return myPageDao.selectReviewScore(reviewDto);
    }

    public List<GenreDto> genreFind() {
        GenreDto genreDto = new GenreDto();
        genreDto.setUserId(sessionService.getLoginId());

        return genreDao.genreList(genreDto);
    }


}
