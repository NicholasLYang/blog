is_not_mobile = window.matchMedia("(min-width: 600px)").matches

// $(window).scroll(function scrollFunc() {
//     if (is_not_mobile) {
//         if ($(document).scrollTop() > 50) {
//             console.log("Sliding up");
//             $('.header-bar').slideUp();
//             $('.alert-bar').slideUp();
//             $('.user-bar').slideUp();
//         }
//         else{
//             console.log("Sliding down");
//             $('.header-bar').slideDown();
//             $('.alert-bar').slideUp();
//             $('.user-bar').slideDown();
//         }
//     }
// });



$(window).scroll(function () {
    var header = $('.header-bar');
    var user = $('.user-bar');
    var scrollTop = $(window).scrollTop();

    if (scrollTop > 100) {
        header.addClass("header-anchored");
        user.addClass("user-anchored");
    }
    else {
        header.removeClass("header-anchored");
        user.removeClass("user-anchored");
    }
});
