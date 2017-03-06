is_not_mobile = window.matchMedia("(min-width: 600px)").matches

$(window).scroll(function() {
    if (is_not_mobile) {
        if ($(document).scrollTop() > 50) {
            console.log("Sliding up");
            $('.header-bar').slideUp();
            $('.user-bar').slideUp();
        }
        else{
            console.log("Sliding down");
            $('.header-bar').slideDown();
            $('.user-bar').slideDown();
        }
    }
});
