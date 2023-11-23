function review_data() {
    let review = `<div class="review_list_box">
                    <div class="list_line"></div>
                    <div class="review_title_box">
                        <div class="nickname">닉네임</div>
                        <div class="star_icon1"><img src="./img/star.png" alt=""></div>
                        <div class="movie_avg1">4</div>
                        <div class="write_date">날짜</div>
                    </div>
                    <div class="review_content">리뷰입력</div>
                    <div class="update_box">
                        <div class="update_btn">수정</div>
                        <div class="update_btn">삭제</div>
                    </div>
                    <div class="like_box_chk">
                        <input type="checkbox" id="like">
                        <div class="like_icon_box">
                            <label for="like">
                                <div class="like_icon" id="like_img" onclick="idChkPopup()"><img src="./img/heart.png" alt="찜"></div>
                            </label>
                        </div>
                        <div class="like_cnt">256</div>
                    </div>
                </div>`

    $(review).appendTo('.review_list')
}

review_data();

$('.review_write_move a').click(function() {

    event.preventDefault();

    let href = $(this).attr('href')

    $('html, body').animate({
        scrollTop: $(href).offset().top
    }, 1000)    

    $('.review_write').focus();
})

function writeBtnChk() {
    var starChk = $('input[name=star_rd]:checked').val();
    var contentChk = $('.review_write').val();
    if (!starChk) {
        Swal.fire({
            icon: "warning",
            title: "별점을 체크해주세요"
        });
    }
    else if (!contentChk) {
        Swal.fire({
            icon: "warning",
            title: "리뷰 내용을 입력해주세요"
        });
    }
}


let jjim = document.getElementById('jjim_img')
jjim.addEventListener('click', function(){
    jjim.classList.toggle('jjim_color');
})

let watched = document.getElementById('watched_img')
watched.addEventListener('click', function() {
    watched.classList.toggle('watched_color');
})

let like = document.getElementById('like_img')
like.addEventListener('click', function(){
    like.classList.toggle('like_color');
})


let idChkNone = document.getElementById('login_move_popup')    
function idChkPopup() {
    idChkNone.style.display = "block";
    idChkNone.style.overflow = "hidden";
}

function closeLoginPopup() {
    idChkNone.style.display = "none";
}


