<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Like</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="icon" href="<c:url value='/img/favicon.ico'/>">
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/detail_page.css'/>">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
    <div id="wrap">
        <header class="header">
            <div class="logo"><a href="#"><img src="<c:url value='/img/logo.png'/>" alt="로고 이미지"></a></div>
            <div class="h_left left_50"><a href="">영화 전체보기</a></div>
            <div class="h_left"><a href="./Movie_Like_find.html">차트</a></div>
            <div class="h_left"><a href="">키워드 찾기</a></div>
            <div class="h_right">
                <div class="login"><a href="">로그인</a></div>
                <div class="line"></div>
                <div class="join"><a href="">회원가입</a></div>
            </div>
        </header>
        <main class="container">
            <div class="content1">
                <div class="detail_poster"><img src="./img/poster.jpg" alt=""></div>
                <div class="detail_content">
                    <div class="detail_top">
                        <div class="movie_title">
                            영화제목</div>
                        <span class="movie_year">(개봉년)</span>
                    </div>
                    <div class="movie_title_eng">The Marvels</div>
                    <div class="movie_country">국가명</div>
                    <div class="movie_genre">장르</div>
                    <div class="movie_ott_box">
                        <div class="float_L">
                            <div class="ott_img"><img src="./img/ott/8.png" alt=""></div>
                            <div class="movie_ott">넷플릭스</div>
                        </div>
                    </div>
                    <div class="avg_box">
                        <div class="star_icon"><img src="./img/star.png" alt=""></div>
                        <div class="movie_avg">4.2</div>
                    </div>
                </div>
                <div class="click_box">
                    <div class="click_box1"><a href="">
                        <input type="checkbox" id="jjim">
                        <div class="jjim_box">
                            <label for="jjim">
                                <div class="click_icon" id="jjim_img" onclick="idChkPopup()"><img src="./img/heart.png" alt="찜"></div>
                            </label>
                        </div>
                        <div class="click_menu">찜</div>
                    </a></div>
                    <div class="click_box1"><a href="">
                        <input type="checkbox" id="check">
                        <div class="check_box">
                            <label for="check">
                                <div class="click_icon" id="watched_img" onclick="idChkPopup()"><img src="./img/check.png" alt="찜"></div>
                            </label>
                        </div>
                        <div class="click_menu">봤어요</div>
                    </a></div>
                    <div class="click_box1"><a href="">
                        <div class="click_icon"><img src="./img/share.png" alt="공유"></div>
                        <div class="click_menu">공유</div>
                    </a></div>
                    <div class="click_box1 review_write_move"><a href="#review_write">
                        <div class="click_icon"><img src="./img/write.png" alt="리뷰작성"></div>
                        <div class="click_menu">리뷰작성</div>
                    </a></div>
                </div>
                <div id="login_move_popup">
                    <div class="login_page_move_icon"><img src="./img/login_page_move.png" alt=""></div>
                    <div class="login_txt">로그인이 필요한 기능입니다.</div>
                    <div class="popup_btn_box">
                        <div class="popup_btn"><a href="./Movie_Like_login.html">로그인</a></div>
                        <div class="popup_btn" onclick="closeLoginPopup()">취소</div>
                    </div>
                    <div class="popup_close_btn" onclick="closeLoginPopup()"><img src="./img/close_btn.png" alt=""></div>
                </div>
                
                <div class="best_review_box">
                    <div class="best_title">이 영화의 베스트 리뷰</div>
                    <div class="best_icon"><img src="./img/best_review.png" alt=""></div>
                    <div class="best_box">
                        <div class="best">
                            <div class="best_review_id">닉네임</div>
                            <div class="star_icon_best"><img src="./img/star.png" alt=""></div>
                            <div class="movie_star_best">4.2</div>
                            <div class="best_review_txt">리뷰 내용</div>
                            <div class="like_box">
                                <div class="like_icon nofilter"><img src="./img/heart_cnt.png" alt=""></div>
                                <div class="like_cnt">256</div>
                            </div>
                        </div>
                        <div class="best"></div>
                        <div class="best"></div>
                    </div>
                </div>
            </div>
            <div class="content2">
                <div class="title_txt">줄거리</div>
                <div class="txt">줄거리 내용</div>
                <div class="title_txt">감독 / 출연배우</div>
                <div class="actor_box">
                    <div class="actor_box1">
                        <div class="photo"><img src="./img/profile_img.png" alt=""></div>
                        <div class="photo_name">배우이름</div>
                    </div>
                </div>
                <div class="title_txt">예고편 영상</div>
                <div class="preview">
                    <iframe src="./img/trailer.mp4"></iframe>
                </div>
                <div class="review_box" id="review_write">
                    <div class="write_box">
                        <div class="title_txt">리뷰 작성</div>
                        <div class="star_score_box">
                            <input type="radio" name="star_rd" class="star_none" id="star5">
                            <div class="star_score"><label for="star5"><img src="./img/star.png" alt="" class="img_pointer"></label></div>
                            <input type="radio" name="star_rd" class="star_none" id="star4">
                            <div class="star_score"><label for="star4"><img src="./img/star.png" alt="" class="img_pointer"></label></div>
                            <input type="radio" name="star_rd" class="star_none" id="star3">
                            <div class="star_score"><label for="star3"><img src="./img/star.png" alt="" class="img_pointer"></label></div>
                            <input type="radio" name="star_rd" class="star_none" id="star2">
                            <div class="star_score"><label for="star2"><img src="./img/star.png" alt="" class="img_pointer"></label></div>
                            <input type="radio" name="star_rd" class="star_none" id="star1">
                            <div class="star_score"><label for="star1"><img src="./img/star.png" alt="" class="img_pointer"></label></div>
                        </div>
                        <input type="text" class="review_write" placeholder="리뷰 내용을 입력해주세요.">
                        <input type="button" class="review_write_btn" value="등록" onclick="writeBtnChk()">
                    </div>

                    <div class="all_review">
                        <div class="title_txt">모든 리뷰</div>
                        <select class="select_r">
                            <option value="latest" selected>최신순</option>
                            <option value="like">좋아요순</option>
                        </select>
                        <div class="review_list">
                            
                        </div>
                        
                        <div class="page_box">
                            <div class="prev_btn">〈</div>
                            <div class="num">1</div>
                            <div class="next_btn">〉</div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </main>
        <footer class="footer">
            <div class="footer_content">
                <div class="f_box">
                    <div class="f_logo"><img src="./img/logo.png" alt=""></div>
                    <div class="f_txt1">© 2023 by ML, Inc. All rights reserved.</div>
                </div>
                <div class="f_box">
                    <div>Project Name: Movie Like</div>
                    <div class="name">
                        <div>Team: 문수빈</div> 
                        <div class="f_line"></div> 
                        <div>김주영</div>
                        <div class="f_line"></div> 
                        <div>송유영</div>
                        <div class="f_line"></div> 
                        <div>전은서</div>
                        <div class="f_line"></div> 
                        <div>박정선</div>
                </div>
            </div>
        </footer>
    </div>
    <script src="./js/detail.js"></script>
</body>
</html>