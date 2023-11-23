package com.movielike.app.controller;

import com.movielike.app.domain.*;
import com.movielike.app.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MyPageController {
    @Autowired
    MyPageService myPageService;

    @GetMapping("/myPage")
    public String mypage(Model model, HttpSession session) {
        // 원래의 과정은
        // 로그인 후에 session에 loginId를 넣어줘야함..
        // 그런데 지금은 그 과정이 없으므로 여기서 세션값에 주입을 해줌..

        // 임의로 세션값을 저장해줌
        // 나중에는 아래줄을 삭제해도 동작해야함..
        // 로그인후에 넣어준 세션값을 가져와서 사용
        session.setAttribute("loginId", 1);
        session.setAttribute("loginNick","hello@hanmail.com");

        List<ReviewDto> reviews = myPageService.reviewFind();
        model.addAttribute("reviews_count", reviews.size());
        model.addAttribute("review_list", reviews);

        List<WatchedMovieDto> watchedMovies = myPageService.watchedMovieFind();
        model.addAttribute("watched_count", watchedMovies.size());

        List<MyListDto> myList = myPageService.myListFind();
        model.addAttribute("list_count", myList.size());

        // 평점 차트
        List<ReviewScoreDto> reviewScore = myPageService.reviewScoreFind();
        model.addAttribute("review_score", reviewScore);

        // 장르 정보
        List<GenreDto> genreList = myPageService.genreFind();
        model.addAttribute("genre_list", genreList);

        return "Movie_Like_mypage";
    }

    @Controller
    public  class chart
    {

    }
}
