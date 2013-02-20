(function() {
    var bool = false;
    $("#navigate li").stop().mouseenter(function() {
//        if ($(this).children("a").hasClass("active")) {
//            bool = true;
//        } else {
//            $(this).children("a").addClass("hovers");
//        }
        $(this).children("ul").show();
    }).mouseleave(function() {
        if (bool) {
            $(this).children("a").addClass("active");
            bool = false;
        }
        $(this).children("ul").hide();
        $(this).children("a").removeClass("hovers");
    });
    $(".tblList th input[type=checkbox]").change(function() {
        if ($(this).is(':checked')) {
            $(".tblList td input[type=checkbox]").attr("checked", true);
            $(".tblList td").parent("tr").addClass('selectRow');
        } else {
            $(".tblList td input[type=checkbox]").attr("checked", false);
            $(".tblList td").parent("tr").removeClass("selectRow");
        }
    });
    $(".tblList td input[type=checkbox]").change(function() {
        if ($(this).is(':checked')) {
            $(this).parent("td").parent("tr").addClass("selectRow");
        } else {
            $(this).parent("td").parent("tr").removeClass("selectRow");
        }
    });
    $(".tblList tr:odd").addClass("oddRow");

    var url = window.location.toString();
    var url2 = url.substring(url.lastIndexOf('-') + 1, url.lastIndexOf('.'));
    $("#navigate li > a").each(function() {
        if ($(this).data("name") == url2) {
            $("#navigate li > a").removeClass("active");
            $(this).addClass("active");
        }
    });
})();

    

$(document).scroll(function() {
    if ($(this).scrollTop() > 150) {
        $("div.toolbar").addClass("topbar");
    } else {
        $("div.toolbar").removeClass("topbar");
    }
});