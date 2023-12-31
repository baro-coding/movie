<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Like</title>
    <link rel="icon" href="./img/favicon.ico">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/my_page.css">
</head>
<body>
    <div id="wrap">
        <header class="header">
            <div class="logo"><a href=""><img src="./img/logo.png" alt="로고 이미지"></a></div>
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
            <div class="content">
                <div class="my_genre">
                    <c:forEach var="genre" items="${genre_list}">
                        <input type="button" class="genre" value="#${genre.genrName}" onclick="genreClick(${genre.genrId})">
                    </c:forEach>
                </div>
                <div class="nickname_txt">닉네임</div>
                <div class="user_id">아이디(이메일)</div>
                <div class="update_icon">
                    <img src="./img/set.png" alt="" class="icon_hover">
                    <div class="my_change_btn">개인정보변경</div>
                    <div class="my_end_btn">회원탈퇴</div>
                </div>
                
    
                <div class="btn_box">
                    <div class="btn_each_box">
                        <a href="#my_review">
                            <div class="my_review_cnt">${reviews_count}</div>
                            <div class="my_txt">리뷰</div>
                        </a>
                    </div>
                    <div class="btn_each_box">
                        <a href="./Movie_Like_watched.html">
                            <div class="my_watched_cnt">${watched_count}</div>
                            <div class="my_txt">봤어요</div>
                        </a>
                    </div>
                    <div class="btn_each_box">
                        <a href="./Movie_Like_liked.html">
                            <div class="my_like_cnt">${list_count}</div>
                            <div class="my_txt">찜</div>
                        </a>
                    </div>
                </div>
                <div class="chart_box">
                    <div class="chart_title">나의 평점 차트</div>

                    <div class="vertical_chart_box">
                        <div class="chart_box">
                          <!-- <ul class="axis_y">
                            <li class="item">10<span class="blind">%</span></li>
                            <li class="item">20<span class="blind">%</span></li>
                            <li class="item">30<span class="blind">%</span></li>
                            <li class="item">40<span class="blind">%</span></li>
                            <li class="item">50<span class="blind">%</span></li>
                          </ul> -->
                          <ul class="axis_x">
                            <li class="item">
                              <div class="text_box">
                                <strong class="rating">1</strong>
                              </div>
                              <button type="button" class="graph">
                                <span class="time data" style="height:80%;"><span class="blind">data 타입 1</span></span>
                              </button>
                            </li>
                            <li class="item">
                              <div class="text_box">
                                <strong class="rating">2</strong>
                              </div>
                              <button type="button" class="graph">
                                <span class="time data" style="height:50%;"><span class="blind">data 타입 1</span></span>
                              </button>
                            </li>
                            <li class="item">
                              <div class="text_box">
                                <strong class="rating">3</strong>
                              </div>
                              <button type="button" class="graph">
                                <span class="time data" style="height:100%;"><span class="blind">data 타입 3</span></span>
                              </button>
                            </li>
                            <li class="item">
                              <div class="text_box">
                                <strong class="rating">4</strong>
                              </div>
                              <button type="button" class="graph">
                                <span class="time data" style="height:100%;"><span class="blind">data 타입 1</span></span>
                              </button>
                            </li>
                            <li class="item">
                              <div class="text_box">
                                <strong class="rating">5</strong>
                              </div>
                              <button type="button" class="graph">
                                <span class="time data" style="height:40%;"><span class="blind">data 타입 1</span></span>
                              </button>
                            </li>
                          </ul>
                        </div>                                                 
                      </div>
                </div>

                <div class="review_box" id="my_review">
                  <div class="myreview_title_txt">내가 쓴 리뷰</div>
                  <select class="select_r">
                      <option value="latest" selected>최신순</option>
                      <option value="like">좋아요순</option>
                  </select>
                    <c:forEach var="data" items="${review_list}" begin="0" end="9">
                        <div class="review_list_box" onclick="movieClick(${data.movId})">
                            <div class="list_line"></div>
                            <div class="review_title_box">
                                <div class="nickname">${data.userNickname}</div>
                                <div class="star_icon1"><img src="./img/star.png" alt=""></div>
                                <div class="movie_avg1">${data.rvScore}</div>
                                <div class="write_date">${data.rvUpDate}</div>
                            </div>
                            <div class="review_content">${data.rvContent}</div>
                            <div class="like_box">
                                <div class="like_icon"><img src="./img/heart_cnt.png" alt=""></div>
                                <div class="like_cnt">${data.rvLike}</div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="img_box"><img src="./img/move_gif.gif" alt=""></div>

        </main>
    </div>
    <script src="./js/mypage.js"></script>

</body>
</html>