var is_not_mobile = window.matchMedia("(min-width: 600px)").matches
var minimized = false;
var locked = false;


$(window).scroll(function () {
    if ($(document).scrollTop() > 50) {
        minimized = minBars();
    }
    else{
        minimized = maxBars();
    }
});

function minBars() {
    $('.header-bar').switchClass("max-header-bar",
                                 "min-header-bar",
                                 200);
    $('.user-bar').slideUp();
    $('.alert-bar').slideUp();
    if (!locked) {
        $(".header-bar-list").slideUp();
    }
    return true
}

function maxBars() {
    $('.header-bar').switchClass("min-header-bar",
                                 "max-header-bar",
                                 200);

    $('.user-bar').slideDown();
    $('.header-bar-list').slideUp();
    locked = false;
    $('.header-bar-img').removeClass('rotated');
    return false;
}

$(document).ready(function() {

    $(".header-bar").hover(
        function() {
            if (minimized) {
                $(".header-bar-list").slideDown();
            }
        },
        function(){
            if (!locked) {
                $(".header-bar-list").slideUp();
            }
        }
    );
    $(".header-bar-img").click(
        function() {
            $(this).toggleClass("rotated", 200, "easeOutSine");
            locked = !locked
            console.log(locked);
            if (!locked) {
                $(".header-bar-list").slideUp();
            }
        });
});
