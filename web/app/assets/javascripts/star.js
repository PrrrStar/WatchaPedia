const stars = document.querySelectorAll(".star_box");
const realStars = document.querySelectorAll(".real-star");
const starBox = document.querySelector(".content_info_star");

// 별을 채우는 함수
function fillFullStar(value) {
    // 소수점을 각각 배열의 원소로 분리
    value = value.split(".");
    value = value.map(x => parseInt(x));

    // 정수 부분 만큼 채워지는 로직
    for (var i = 0; i < value[0]; i++) {
        realStars[i].classList.remove('far', 'fas', 'fa-star', 'fa-star-half-alt');
        realStars[i].classList.add('fas', 'fa-star');
    }
    // 소수점이 있다면, 반만큼 채우라는 로직
    if (value[1]) {
        realStars[value[0]].classList.remove('far', 'fa-star');
        realStars[value[0]].classList.add('fas', 'fa-star-half-alt');
    }
}

// 이벤트 타겟을 확인해서 위 함수를 돌리기 위한 함수.
function fillStars(event) {
    let value = event.target.getAttribute("value");
    fillFullStar(value);
}

// 채워진 별들이 다시 빈 별로 돌아가는 함수.
function emptyStars() {
    let value = event.target.getAttribute("value");
    value = value.split(".");
    value = value.map(x => parseInt(x));
    // 빈 별로 만드는 로직.
    if (value[1]) {
        realStars[value[0]].classList.remove('far', 'fas', 'fa-star-half-alt', 'fa-star');
        realStars[value[0]].classList.add('far', 'fa-star');
    }
}

// 5개 별 묶음 박스에서 마우스가 나갈 시에 채워진 별들이 초기화되는 함수.
function resetStar() {
    for (var i = 0; i < realStars.length; i++) {
        realStars[i].classList.remove("fas", "far", "fa-star-half-alt", "fa-star");
        realStars[i].classList.add("far", "fa-star");
    };
}


// 반복문과 배열을 이용하여, 위의 함수들을 호출할수 있게끔 addEventListener를 달아줬습니다.
for (var i = 0; i < stars.length; i++) {
    stars[i].addEventListener("mouseover", fillStars);
    stars[i].addEventListener("mouseout", emptyStars);
};

starBox.addEventListener("mouseout", resetStar);