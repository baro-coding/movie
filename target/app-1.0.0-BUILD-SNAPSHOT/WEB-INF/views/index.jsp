<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Like</title>
    <link rel="icon" href="./img/favicon.ico">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/main_page.css'/> ">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
</head>
<body>
    <div id="wrap">
        <header class="header">
            <div class="logo"><a href="/"><img src="<c:url value='/img/logo.png'/>" alt="로고 이미지"></a></div>
            <div class="h_left left_50"><a href="">영화 전체보기</a></div>
            <div class="h_left"><a href="./Movie_Like_find.html">차트</a></div>
            <div class="h_left"><a href="<c:url value='/find/keyword'/>">키워드 찾기</a></div>
            <div class="h_right">
                <div class="login"><a href="">로그인</a></div>
                <div class="line"></div>
                <div class="join"><a href="">회원가입</a></div>
            </div>
        </header>

        <main class="container">
            <div class="main_banner">
                <!-- 메인베너 -->
                <div class="mainbanner_list on"><a href="#"><img src="./img/mainbanner1.jpg" alt="1" width="100%" height="100%"></a></div>
                <div class="mainbanner_list"><a href="#"><img src="./img/mainbanner2.jpg" alt="2" width="100%" height="100%"></a></div>
                <div class="mainbanner_list"><a href="#"><img src="./img/mainbanner3.jpg" alt="3" width="100%" height="100%"></a></div>
                <div class="mainbanner_list"><a href="#"><img src="img/mainbanner4.jpg" alt="4" width="100%" height="100%"></a></div>
                <div class="mainbanner_list"><a href="#"><img src="img/mainbanner5.jpg" alt="5" width="100%" height="100%"></a></div>   
                <section>   
                <div class="left_btn">
                    <span></span>
                    <span></span>
                    </div>
                    <div class="right_btn">
                    <span></span>
                    <span></span>
                    </div>
                </section>
                <section id="control">
                    <a class="on" href="#"></a>
                    <a href="#"></a>
                    <a href="#"></a>
                    <a href="#"></a>
                    <a href="#"></a>
                </section>
            </div>
            <div class="search_bar">
                <input type="text" class="search" placeholder="영화 제목, 감독 배우를 검색해주세요">
                <div class="s_icon"><a href=""><img src="./img/search.png" alt=""></a></div>
            </div>
            <div class="content">
                <div class="content_box">
                    <div class="title_box">
                        <div class="title">전체 인기순위</div>
                        <div class="title_icon"><img src="./img/crown.png" alt="왕관 아이콘"></div>
                    </div>
                    <div class="ranking_poster_box">
                        <div class="recommended_item_content">
                            <section class="new_arr">
                                <!-- Swiper -->
                                <div class="swiper mySwiper" style="
                                padding: 0 30px; box-sizing: border-box;">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">1</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">2</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">3</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">4</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">5</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">6</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">7</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">8</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">9</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">10</div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                    
                                    <!-- If we need navigation buttons -->
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="content_box">
                    <div class="title_box">
                        <div class="title">넷플릭스 인기순위</div>
                        <div class="title_icon"><img src="./img/popcon.png" alt="팝콘 아이콘"></div>
                    </div>
                    <div class="ranking_poster_box">
                        <div class="recommended_item_content">
                            <section class="new_arr">
                                <!-- Swiper -->
                                <div class="swiper mySwiper" style="
                                padding: 0 30px; box-sizing: border-box;">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">1</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">2</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">3</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">4</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">5</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">6</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">7</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">8</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">9</div>
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="./img/poster.jpg" alt="">
                                            <div class="ranking">10</div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                    
                                    <!-- If we need navigation buttons -->
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="content_box">
                    <div class="title_box">
                        <div class="title">사람들이 많이 보고 싶어 하는 영화</div>
                        <div class="title_icon"><img src="./img/eyes.png" alt="눈 아이콘"></div>
                        <div class="more_btn"><a href="">더보기</a></div>
                    </div>
                    <div class="poster_box">
                        
                    </div>
                </div>

                <div class="best_review_box">
                    <div class="title_box">
                        <div class="title">베스트 리뷰</div>
                        <div class="title_icon"><img src="./img/best_review.png" alt="베스트 아이콘"></div>
                    </div>
                    <div class="review_box">
                        <div class="review">
                            
                        </div>
                        <div class="review">
                            
                        </div>
                        <div class="review">
                            
                        </div>
                    </div>
                </div>

                <div class="content_box">
                    <div class="title_box">
                        <div class="title">지브리 시리즈</div>
                        <div class="title_icon"><img src="./img/gibli.png" alt="지브리 아이콘"></div>
                        <div class="more_btn"><a href="">더보기</a></div>
                    </div>
                    <div class="poster_box">
                        
                    </div>
                </div>

                <div class="content_box">
                    <div class="title_box">
                        <div class="title">마블 시리즈</div>
                        <div class="title_icon"><img src="./img/marble.png" alt="마블 아이콘"></div>
                        <div class="more_btn"><a href="">더보기</a></div>
                    </div>
                    <div class="poster_box">
                        
                    </div>
                </div>

                <div class="content_box">
                    <div class="title_box">
                        <div class="title">해리포터 시리즈</div>
                        <div class="title_icon"><img src="./img/glasses.png" class="glasses" alt="해리포터 아이콘"></div>
                        <div class="more_btn"><a href="">더보기</a></div>
                    </div>
                    <div class="poster_box">
                        
                    </div>
                </div>
            </div>
        </main>

        <footer class="footer">
            <div class="name">Project Name: Movie Like</div>
        </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <script src="./js/main_item.js"></script>
</body>
</html>