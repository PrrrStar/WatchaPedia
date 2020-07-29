const signUp = document.querySelector("#js-signUp");
const popSignUp = document.querySelector(".pop_sign-up");
const overlay = document.querySelector(".overlay");
const body = document.querySelector("body");

function showSignUp() {
    popSignUp.style.display = "flex";
    overlay.style.display = "block";
};

function closePopUp(event) {
    let target = event.target;
    if (target.className == "overlay") {
        popSignUp.style.display = "none";
        overlay.style.display = "none";
    }
}

signUp.addEventListener("click", showSignUp);
body.addEventListener("click", closePopUp);