/* Variables*/
var resize_btn = document.getElementsByName("content-size-toggle")[0];
var togglePanel_btn = document.getElementsByClassName("right-rail-toggle")[0];

/* Eventos */
window.addEventListener('scroll', function() {
    const elemento = document.getElementsByClassName('sticky-header');
    var scrolling = window.scrollY > 250;
    elemento[0].classList[scrolling ? 'add' : 'remove']('is-visible');
});

resize_btn.addEventListener('click', function() {
    var bodyobj = document.getElementsByTagName("body")[0],
        bodystate = bodyobj.classList.contains("is-content-expanded"),
        button_open = "./assets/svg-resources.xml#icon-zoom-in-small",
        button_close = "./assets/svg-resources.xml#icon-zoom-out-small",
        resize_btn_use = resize_btn.children[0].children[0];
    if (bodystate == false) {
        bodyobj.classList.add('is-content-expanded');
        resize_btn_use.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', button_close);
    } else {
        bodyobj.classList.remove('is-content-expanded');
        resize_btn_use.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', button_open);
    }
});

togglePanel_btn.addEventListener('click', function() {
    var pannelObj = document.getElementsByClassName("page__right-rail")[0],
        pannelState = pannelObj.classList.contains("right-rail-toggle");
    if (pannelState == false) {
        pannelObj.classList.add('right-rail-toggle');
    } else {
        pannelObj.classList.remove('right-rail-toggle');
    }
});