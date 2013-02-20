//$(document).ready(function() {
//    (function(a) {
//        a(function() {
//            var b = a("#scrollbarbox").offset();
//            var c = a("#header").outerHeight(); 
//           
//            console.log(c);
//            a(window).scroll(function() {
//                if (a(window).scrollTop() > b.top) {
//                    var d = a(window).scrollTop();
//                    a("#scrollbarbox").stop().animate({ Top: d });
//                } else {
//                    a("#scrollbarbox").stop().animate({ Top: 170 });
//                }
//            });
//        });
//    })(jQuery);
//});

function sendComment() {
    if ($(".commentarea").val().length < 10 || $(".commentinput").val() == 0) {
        alert("Bạn cần phải nhập tên, và bình luận(lớn hơn 10 kí tự) nhé!");
        return false;
    }
    var str;
    $.ajax({
        url: '/ajax/SendComment.ashx',
        data: { comment: $(".commentarea").val(), username: $("#username").val() ,contact:$("#usercontact").val()},
        type:'POST',
        success: function(data) {
            if (data == 1) {
                str = "Bạn đã gửi ý kiến thành công! Vui lòng chờ 12h để bình luận có thể hiển thị! Xin cảm ơn!";
            } else if (data == 2) {
                str = "Bạn đã gửi 5 bình luận, vui lòng gửi bình luận vào hôm sau! Xin cảm ơn!";
            }
            alert(str);
            $(".feedbackleft input[type=text],.feedbackleft textarea").val("");
        }
    });
    return true;
}


var url = window.location.toString();
var url2 = url.substring(url.lastIndexOf('-') + 1, url.lastIndexOf('.'));

//$("#navigate li > a").each(function() {
//    if ($(this).data("name") == url2) {
//        $("#navigate li > a").removeClass("active");
//        $(this).addClass("active");
//    }
//});


function AddUserPromote() {
//    if ($("#fullname").val().length < 10 || $(".commentinput").val() == 0) {
//        alert("Bạn cần phải nhập tên, và bình luận(lớn hơn 10 kí tự) nhé!");
//        return false;
    //    }
    
    if($("#fullname").val().length<5)
    {
        alert("Bạn cần nhập tên (lớn hơn 5 kí tự)");
        $("#fullname").focus();
        return false;
    }
    if($("#mobile").val().length<5) {
        alert("Bạn cần nhập số điện thoại (Trên 5 kí tự)");
        $("#mobile").focus();
        return false;
    }
    if($("#email").val().length<1) {
        alert("Bạn cần nhập email");
        $("#email").focus();
        return false;
    }
    if($("#school").val().length<1) {
        alert("Bạn cần nhập tên lớp hoặc trường");
        $("#school").focus();
        return false;
    }
    if ($("input:checked").length == 0) {
        alert("Lựa chọn cách tìm đến site?");
        return false;
    }
    var str;
    $.ajax({
    url: '/ajax/SendPromote.ashx',
        data: { fullname: $("#fullname").val(), mobile: $("#mobile").val(), email: $("#email").val(), school: $("#school").val(), address: $("#address").val(),combo:$(".saleoff-combo").val(),via:$("input:checked").closest("p").text() },
        type: 'POST',
        success: function(data) {
            if (data == 1) {
                str = "Nội dung đã được gửi! Cảm ơn bạn đã ủng hộ dongphucdangcap thời gian vừa qua.!";
                alert(str);
            } 
            $(".saleoff input[type=text],.saleoff textarea").val("");
        }
    });
    return true;
}


