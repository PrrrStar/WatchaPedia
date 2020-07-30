signUp = document.querySelector("#js-signUp")
popSignUp = document.querySelector(".pop_sign-up")
overlay = document.querySelector(".overlay")
body = document.querySelector("body")

showSignUp = ->
  popSignUp.style.display = "flex"
  overlay.style.display = "block"
  return

closePopUp = (event) ->
  target = event.target
  if target.className is "overlay"
    popSignUp.style.display = "none"
    overlay.style.display = "none"
    return
  
 
signUp.addEventListener("click", showSignUp)
body.addEventListener("click", closePopUp)