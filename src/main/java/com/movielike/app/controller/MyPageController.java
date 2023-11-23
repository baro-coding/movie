package com.movielike.app.controller;

import com.movielike.app.domain.*;
import com.movielike.app.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MyPageController {
    @Autowired
    MyPageService myPageService;

    @GetMapping("/myPage")
    public String mypage(
            @RequestParam(required = false, defaultValue = "1") int page,
            @RequestParam(required = false, defaultValue = "10") int pageSize,
            @RequestParam(required = false, defaultValue = "new") String orderType,
            Model model, HttpSession session) {
        // 원래의 과정은
        // 로그인 후에 session에 loginId를 넣어줘야함..
        // 그런데 지금은 그 과정이 없으므로 여기서 세션값에 주입을 해줌..

        // 임의로 세션값을 저장해줌
        // 나중에는 아래줄을 삭제해도 동작해야함..
        // 로그인후에 넣어준 세션값을 가져와서 사용
        session.setAttribute("loginId", 1);
        session.setAttribute("loginNick","hello@hanmail.com");

        List<ReviewDto> reviews = myPageService.reviewFind(page, pageSize, orderType);
        int totalItems = myPageService.reviewCount();
        model.addAttribute("reviews_count", reviews.size());
        model.addAttribute("review_list", reviews);

        int totalPages = (int) Math.ceil((double) totalItems / pageSize);


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

        // 페이징 정보를 전달
        model.addAttribute("currentPage", page);
        model.addAttribute("startPage", page - (page - 1) % 10);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("orderType", orderType);

        return "Movie_Like_mypage";
    }
}
