function my_review_list() {
    let my_review = `<div class="review_list_box">
                    <div class="list_line"></div>
                    <div class="review_title_box">
                        <div class="nickname">닉네임</div>
                        <div class="star_icon1"><img src="./img/star.png" alt=""></div>
                        <div class="movie_avg1">4</div>
                        <div class="write_date">4달 전</div>
                    </div>
                    <div class="review_content">리뷰내용</div>
                    <div class="like_box">
                        <div class="like_icon"><img src="./img/heart_cnt.png" alt=""></div>
                        <div class="like_cnt">256</div>
                    </div>
                </div>`

    $(my_review).appendTo(".my_review_list");
}
my_review_list();


$('.btn_myreview a').click(function() {

    event.preventDefault();

    let href = $(this).attr('href')

    $('html, body').animate({
        scrollTop: $(href).offset().top
    }, 1000)
})

function updateCheck() {
    // var user_password = prompt('비밀번호를 입력해주세요');
    (async () => {
        const { value: user_password } = await Swal.fire({
            title: '비밀번호를 입력해주세요',
            input: 'text',
            confirmButtonColor: "#a785efb8"
        })

        // 비밀번호 일치하면 회원정보 변경 화면 띄움
        if (user_password) {
            var popup = document.getElementById("popup");
            popup.style.visibility = "visible";
            popup.style.opacity = "1";
            popup.style.zIndex = "9"
        }
    })()

    // 비밀번호 확인하고 회원정보 폼 뜨기



}



function closePopup() {
    var popup = document.getElementById("popup");
    popup.style.visibility = "hidden";
    popup.style.opacity = "0";
}

// 외부영역 클릭 시 팝업 닫기
$(document).mouseup(function (e){
    var Popup = $(".popup");
    if(Popup.has(e.target).length === 0){
        closePopup();
    }
});


function updatePopup() {
    Swal.fire({
        position: "center",
        zIndex: 99999,
        icon: "success",
        title: "회원정보가 수정되었습니다.",
        showConfirmButton: false,
        timer: 1500
    });
}



function unregister() {
    Swal.fire({
        title: "정말 탈퇴하시겠습니까?",
        text: "탈퇴시 모든 개인정보가 삭제됩니다.",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#AD8B73",
        cancelButtonColor: "#BEBCBA",
        confirmButtonText: "네",
        cancelButtonText: "아니요"
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                title: "회원 탈퇴",
                text: "탈퇴되었습니다.",
                icon: "success"
            });
        }
    });
}




// 생년월일 선택 부분
// 년
const birthYearEl = document.querySelector('#birth_year')
let today = new Date();
let year = today.getFullYear();

isYearOptionExisted = false;
birthYearEl.addEventListener('focus', function() {
    if(!isYearOptionExisted) {
        isYearOptionExisted = true;
        for(var i = 1940; i<=year; i++) {
            const YearOption = document.createElement('option')
            YearOption.setAttribute('value', i)
            YearOption.innerText = i

            this.appendChild(YearOption);
        }
    }
});

// 월
var birthMonthEl = document.querySelector('#birth_month')

// 일
var birthDateEl = document.querySelector('#birth_date')

isMonthOptionExisted = false;
birthMonthEl.addEventListener('focus', function() {
    if(!isMonthOptionExisted) {
        isMonthOptionExisted = true;
        for(i=1; i<=12;i++) {
            const MonthOption = document.createElement('option')
            MonthOption.setAttribute('value', i)
            MonthOption.innerText = i

            this.appendChild(MonthOption);
        }
    }
});


birth_month.addEventListener('change', function() {

    var chk_month = birth_month.options[birth_month.selectedIndex].value;
    console.log(chk_month);


    isDateOptionExisted = false;
    if(chk_month == 2) {
        birthDateEl.addEventListener('focus', function() {
            if(!isDateOptionExisted) {
                $('#birth_date').empty(); // .empty() : 지정한 요소의 하위 요소를 제거
                isDateOptionExisted = true;
                for(i=1; i<=28;i++) {
                    const DateOption = document.createElement('option')
                    DateOption.setAttribute('value', i)
                    DateOption.innerText = i

                    this.appendChild(DateOption);
                }
                isDateOptionExisted = false;
            }
        });
    }
    else if(chk_month == 4 || chk_month == 6 || chk_month == 9 || chk_month == 11) {
        isDateOptionExisted = false;
        birthDateEl.addEventListener('focus', function() {
            if(!isDateOptionExisted) {
                $('#birth_date').empty();
                isDateOptionExisted = true;
                for(i=1; i<=30;i++) {

                    var DateOption = document.createElement('option')

                    DateOption.setAttribute('value', i)
                    DateOption.innerText = i

                    this.appendChild(DateOption);
                }
                isDateOptionExisted = false;
            }
        });
    }
    else {
        isDateOptionExisted = false;
        birthDateEl.addEventListener('focus', function() {
            if(!isDateOptionExisted) {
                $('#birth_date').empty();
                isDateOptionExisted = true;
                for(i=1; i<=31;i++) {
                    const DateOption = document.createElement('option')
                    DateOption.setAttribute('value', i)
                    DateOption.innerText = i

                    this.appendChild(DateOption);
                }
                isDateOptionExisted = false;
            }
        });
    }
})

// 차트
const ctx = document.getElementById('myChart');

new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['1', '2', '3', '4', '5'],
        datasets: [{
            data: [12, 19, 3, 5, 2],
            backgroundColor: [
                'rgba(255, 99, 132, 0.5)',
                'rgba(54, 162, 235, 0.5)',
                'rgba(255, 206, 86, 0.5)',
                'rgba(75, 192, 192, 0.5)',
                'rgba(153, 102, 255, 0.5)'
            ],
            borderWidth: 2,
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)'
            ],
            fill: false
        }]
    },
    options: {
        maxBarThickness: 50,
        scales: { // 눈금선 없애기
            x: {
                grid: {
                    display: false
                },
                ticks: {
                    color: "rgba(255, 255, 255, 1)", // 글자 색
                    font: {
                        size: 20
                    }
                },
                border: {
                    color: "rgba(255, 255, 255, 1)" // 축 색
                },
                barPercentage: 1,
                categoryPercentage: 1,
                barThickness : 45
            },
            y: {
                grid: {
                    display: false
                },
                ticks: {
                    color: "rgba(255, 255, 255, 1)",
                    font: {
                        size: 0
                    }
                },
                border: {
                    display: false
                }
            },
        },

        scaleShowLabels : false,
        plugins: {
            legend: {
                display: false,
            }
        }
    }
});