$(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
        $('.header-bar').slideUp();
        $('.user-bar').slideUp();
    }
    else{
        $('.header-bar').slideDown();
        $('.user-bar').slideDown();
    }
});
