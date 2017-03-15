is_not_mobile = window.matchMedia("(min-width: 600px)").matches

$(window).scroll(function scrollFunc() {
    if (is_not_mobile) {
        if ($(document).scrollTop() > 50) {
            $('.header-bar').switchClass("max-header-bar",
                                         "min-header-bar",
                                         200);
        }
        else{
            $('.header-bar').switchClass("min-header-bar",
                                         "max-header-bar",
                                         200);

            $(".header-bar-list").slideUp();
        }
    }
});


$(document).ready(function() {
    var hidden = true;
    $(".header-bar-icon").hover(
        function() {
            $(".header-bar-list").slideDown();
        },
        function(){
            if (hidden) {
                $(".header-bar-list").slideUp();
            }
        }
    );
    $(".header-bar-icon").click(
        function() {
            $(".header-bar-icon").toggleClass("rotated");
            hidden = !hidden;
        });
});

