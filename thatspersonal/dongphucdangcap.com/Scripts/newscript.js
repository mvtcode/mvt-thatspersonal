var siteInfo = {};
siteInfo.gaId = 'UA-249346-1'; //GA code

var defaultPage = {
    mycarousel_initCallback: function(carousel) {
        // Pause autoscrolling if the user moves with the cursor over the clip.
        carousel.clip.hover(function() {
            carousel.stopAuto();
        }, function() {
            carousel.startAuto();
        });
    },
    SliderDefault: function() {
        jQuery('#mycarousel').jcarousel({
            auto: 5,
            wrap: 'circular',
            initCallback: defaultPage.mycarousel_initCallback
        });
    },
    MenuDefault: function() {
        $("#nav li").mouseenter(function() {
            var realSizeUl = $(this).find("ul").width();
            var off = $(this).position().left;
            if (990 - off <= realSizeUl) {
                $(this).find("ul").css({ right: '0', left: 'auto' });
            }
            $(this).addClass("active");
        }).mouseleave(function() {
            $(this).removeClass("active");
        });
    },
    FitProductOnCategory: function() {
        var i = 1;
        $(".category-products ul li").each(function() {
            if (i == 3) {
                $(this).css({ "margin-right": '0' });
                i = 1;
            } else
                i++;
        });
    },
    CollapseCategory: function() {
        //Fixed position while scrolling
//        $(document).scroll(function() {
//            if ($(this).scrollTop() > 250) {
//                $(".col-left").addClass("fixedCategory");
//            } else {
//                $(".col-left").removeClass("fixedCategory");
//            }
//        });
    }
};

//toogle product Category
function toggleMenu(ele, index) {
    if (index == 1)
        $(ele).addClass("active");
    else
        $(ele).removeClass("active");
}
//Register

function register() {
    alert("X");
    return false;
}

var tuanva = {};
//Google analytics
var _gaq;
tuanva.GoogleAnalytics = { };
tuanva.GoogleAnalytics.init = function() {
    _gaq = _gaq || [];
    _gaq.push(['_setAccount', siteInfo.gaId]);
    _gaq.push(['_trackPageview']);
    (function() {
        var a = document.createElement('script');
        a.type = 'text/javascript';
        a.async = true;
        a.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(a, s);
    })();
    console.log(_gaq);
};

//Facebook
tuanva.Facebook={};
tuanva.Facebook.init = function() {
    //var str = "<div id=\"fb-root\"></div>";
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));
};

//Fixed Scroll
tuanva.fixWhenScroll = function() {
    $(window).scroll(function() {
        var s = $(window).scrollTop();
        $(".fixedScrollDetector").each(function() {
            var a = $(this);
            var b = a.next();
            var c = 5;
            if (a.attr("data-fixedTop") !== undefined) c = a.attr("data-fixedTop");
            if (a.offset().top - c <= s) {
                b.css({ position: "fixed", top: c + "px" });
            } else {
                b.css({ position: "relative", top: "" });
            }
        });
    });
};
