
//-- header fixed JavaScript --> 
/**************************************************Header**********************************/

//if ($(window).width() >= 580) {
//    window.onscroll = function () {
//        myFunction();
//    };
//    var header = document.getElementById("myHeader");
//    var sticky = 460;
//    function myFunction() {
//        if (window.pageYOffset >= sticky) {
//            header.classList.add("sticky");
//        } else {
//            header.classList.remove("sticky");
//        }
//    }
//}

/**************************************************Header_END**********************************/

//< !------scrollup---- - >
$(document).ready(function () {

    $(window).scroll(function () {

        if ($(this).scrollTop() > 100) {

            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });
    $('.scrollup').click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
        return false;
    });
});
$(".carousel").swipe({
    swipe: function (event, direction, distance, duration, fingerCount, fingerData) {

        if (direction == 'left')
            $(this).carousel('next');
        if (direction == 'right')
            $(this).carousel('prev');
    },
    allowPageScroll: "vertical"
});
/*************************PRODUCT_ZOOM******************************/
jQuery(function ($) {

    // Product gallery Slider
    $(".wpb_wiz_gallery_slider").owlCarousel({
        items: 4,
        nav: true,
        navText: ["<i class='wpb_wiz_icons_chevron-left'></i>", "<i class='wpb_wiz_icons_chevron-right'></i>"],
        dots: true,
        margin: 10
    });

    // Init the zoom

    $(".wpb-wiz-main-image").elevateZoom({
        gallery: 'wpb_wiz_gallery',
        galleryActiveClass: 'wpb-wiz-active',
        imageCrossfade: true,
        loadingIcon: 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/ajax-loader.gif',
        cursor: "crosshair",
        lensSize: 200,
        lensShape: "square",
        lensColour: "#ffffff",
        borderSize: 1,
        borderColour: '#888888',
        zoomType: "inner",
        responsive: true,
        zoomWindowWidth: 400,
        zoomWindowHeight: 400,
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 500,
        zoomWindowPosition: 1,
        zoomWindowOffetx: 10,
        easing: true
    });

    // Popup With zoom
    $(".wpb-wiz-main-image").bind("click", function (e) {
        var ez = $('.wpb-wiz-main-image').data('elevateZoom');

//        $.fancybox.open(ez.getGalleryListFancyboxThree());

        return false;
    });

    // Remove srcset & size attr
    $("#wpb_wiz_gallery a").on("click", function () {
        $('.single-product .wpb-wiz-main-images img').removeAttr('srcset');
        $('.single-product .wpb-wiz-main-images img').removeAttr('sizes');
    });

});

/*************************SLICK******************************/

$(document).ready(function () {
    $(".product-carousel").slick({
        infinite: true,
        autoplay: true,
        arrows: true,
        dots: false,
        slidesToShow: 4,
        prevArrow: $(".product-carousel-controls .prev"),
        nextArrow: $(".product-carousel-controls .next"),
        responsive: [{
                breakpoint: 992,
                settings: {
                    arrows: false,
//                    centerMode: true,
                    slidesToShow: 3
                }
            }, {
                breakpoint: 768,
                settings: {
                    arrows: false,
//                    centerMode: true,
                    slidesToShow: 2
                }
            }, {
                breakpoint: 480,
                settings: {
                    arrows: false,
//                    centerMode: true,
                    slidesToShow: 1
                }
            }]
    });
});



$(".dropdown").hover(
        function () {
            $(this).addClass('show');
        }, function () {
    $(this).removeClass('show');
}
);


$("#lastWord").html(function () {
    var text = $(this).text().trim().split(" ");
    var last = text.pop();
    return text.join(" ") + (text.length > 0 ? " <span class='lastword'>" + last + "</span>" : last);
});
