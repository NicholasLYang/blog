var is_not_mobile = window.matchMedia("(min-width: 600px)").matches
var minimized = false;
$(window).scroll(function scrollFunc() {
    if (is_not_mobile) {
        if ($(document).scrollTop() > 50) {
            $('.header-bar').switchClass("max-header-bar",
                                         "min-header-bar",
                                         200);
            $('.user-bar').slideUp()
            $('.alert-bar').slideUp()
            minimized = true;
        }
        else{
            $('.header-bar').switchClass("min-header-bar",
                                         "max-header-bar",
                                         200);

            $(".header-bar-list").slideUp();
            $('.user-bar').slideDown();
            minimized = false;
        }
        console.log(minimized)
    }
});


$(document).ready(function() {
    var hidden = true;
    $(".header-bar").hover(
        function() {
            if (minimized) {
                $(".header-bar-list").slideDown();
            }
        },
        function(){
            if (hidden) {
                $(".header-bar-list").slideUp();
            }
        }
    );
    $(".header-bar-icon").click(
        function() {
            hidden = !hidden;
            if (hidden) {
                $(".header-bar-list").slideUp();
            }
        });
});

