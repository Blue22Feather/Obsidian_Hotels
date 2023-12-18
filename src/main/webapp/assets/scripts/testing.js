var object = document.getElementsByClassName("multi-card__content")[0];

var topBtn = document.getElementsByName("top-btn")[0];
var bottomBtn = document.getElementsByName("bottom-btn")[0];

window.addEventListener('load', function() {
    topBtn.setAttribute("disabled","true");
});

function upcards () {
    object.style.transform = "translateY(50%)"
    topBtn.setAttribute("disabled","true");
    bottomBtn.removeAttribute("disabled");
}

function downcards () {
    object.style.transform = "translateY(-50%)"
    topBtn.removeAttribute("disabled");
    bottomBtn.setAttribute("disabled","true");
}