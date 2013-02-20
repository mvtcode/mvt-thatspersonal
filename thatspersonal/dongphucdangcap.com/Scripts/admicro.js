var strDomain = document.domain, checkStickyLoad = !1, checkStickyCount = !1, random1 = 0, return_link = "", admTimeSticky = 0, t_showFooterPopup, t_showFooterPopup1, _admStickyHeight = 0, _admStickyFooter = 0, admStickyWide = !1, admchkStickyWide = !1;
if ("undefined" == typeof admStickyHide) var admStickyHide = !1;

function getElementsByPrefix(a, c) {
    var f = [];
    if ("undefined" != typeof c.firstChild) for (var d = c.firstChild; null != d;) "undefined" != typeof d.firstChild && (f = f.concat(this.getElementsByPrefix(a, d))), "undefined" != typeof d.id && d.id.match(RegExp("^" + a + ".*")) && f.push(d), d = d.nextSibling;
    return f
}

var windowPrototype = {
    wdHeight: function() {
        var a;
        "number" == typeof window.innerWidth ? a = window.innerHeight : document.documentElement && document.documentElement.clientHeight ? a = document.documentElement.clientHeight : document.body && document.body.clientHeight && (a = document.body.clientHeight);
        return a
    },
    wdWidth: function() {
        var a;
        "number" == typeof window.innerWidth ? a = window.innerWidth : document.documentElement && document.documentElement.clientWidth ? a = document.documentElement.clientWidth : document.body && document.body.clientWidth &&
            (a = document.body.clientWidth);
        return a
    }
}, Browser = {
    Version: function() {
        var a = 999;
        -1 != navigator.appVersion.indexOf("MSIE") && (a = parseFloat(navigator.appVersion.split("MSIE")[1]));
        return a
    }
}, browserVersion = Browser.Version(), admwdHeight = parseInt(windowPrototype.wdHeight());

function getScrollTop() {
    var a = document.body.scrollTop;
    0 == a && (a = window.pageYOffset ? window.pageYOffset : document.body.parentElement ? document.body.parentElement.scrollTop : 0);
    return a
}

function getElementTop(a) {
    if (document.getElementById) var c = document.getElementById(a);
    else document.all && (c = document.all[a]);
    if (null != c) {
        yPos = c.offsetTop;
        for (tempEl = c.offsetParent; null != tempEl;) yPos += tempEl.offsetTop, tempEl = tempEl.offsetParent;
        return yPos
    }
    return 150
}

function getElementLeft(a) {
    var c;
    document.getElementById ? c = document.getElementById(a) : document.all && (c = document.all[a]);
    if (null == c || "undefined" == typeof c) return 0;
    a = c.offsetLeft;
    for (c = c.offsetParent; null != c;) a += c.offsetLeft, c = c.offsetParent;
    return a
}

function getElementWidth(a) {
    return document.getElementById(a).clientWidth
}

var stickyCheck = 0;

function stickyLoaded(a, c, f) {
    advScroll(a, c, f)
}

var admBox2Status = 0;

function advScroll(a, c, f) {
    "Sticky" == a && 0 != _admStickyHeight && (c = _admStickyHeight);
    var d = "advZone" + a, b = document, g = Math.max(Math.max(b.body.scrollHeight, b.documentElement.scrollHeight), Math.max(b.body.offsetHeight, b.documentElement.offsetHeight), Math.max(b.body.clientHeight, b.documentElement.clientHeight)), j = getScrollTop(), i = getElementTop(d + "Top"), b = b.getElementById(d), l = getElementLeft(d + "Top"), k = 0, e = navigator.userAgent;
    0 == admBox2Status && -1 == e.indexOf("MSIE") && (e = b.innerHTML, -1 != e.indexOf("display:none") &&
        (b.innerHTML = e.replace("display:none", "")), admBox2Status = 1);
    e = "string" == typeof f ? g - getElementTop(f) : f;
    50 > admTimeSticky && admTimeSticky++;
    var h = Math.floor((g - (i + e)) / 2);
    880 <= admwdHeight && (admStickyWide && !admchkStickyWide && 1200 <= h) && (admchkStickyWide = !0);
    _admFSticky = e;
    if ("complete" == window.document.readyState || "undefined" == typeof window.document.readyState || 50 <= admTimeSticky)
        if (g - i > c + e && 110 <= i) {
            b.style.display = "block";
            var h = getElementWidth(d + "Top"), m = getElementWidth(d), n = -1 != strDomain.indexOf("kenh14.vn") ?
                1.08 : 1.2;
            if (g - i - e > n * c) {
                h > m && (k = Math.round((h - m) / 2));
                if (g - j > c + e)
                    if (7 > browserVersion) b.style.position = "absolute", b.style.left = l + k + "px", b.style.top = j + "px", h = getElementTop(d) - j, 0 != h && (b.style.top = j - h + "px");
                    else if ((-1 != strDomain.indexOf("tratu.vn") || -1 != strDomain.indexOf("socvui.com") || -1 != strDomain.indexOf("kenh14.vn")) && 9 >= browserVersion && 8 <= browserVersion) b.style.position = "absolute", b.style.left = l + k + "px", b.style.top = j + "px", h = getElementTop(d) - j, 0 != h && (b.style.top = j - h + "px");
                    else {
                        g = document.domain;
                        e =
                            0;
                        if (-1 != g.indexOf("muare.vn") || -1 != g.indexOf("muare.todo.vn")) e = 35;
                        b.style.left = l + k + "px";
                        b.style.top = e + "px";
                        b.style.bottom = "auto";
                        b.style.position = "fixed"
                    }
                else b.style.position = "absolute", b.style.left = l + k + "px", b.style.top = -1 != document.domain.indexOf("afamily.vn") || -1 != document.domain.indexOf("giacaphe.com") || -1 != document.domain.indexOf("quantri.com.vn") ? g - (c + e) - 300 + "px" : g - (c + e) + "px", h = g - getElementTop(d), c + e > h && (b.style.top = g - 2 * (c + e) + h + "px");
                j < i && (b.style.top = i + "px", b.style.position = "");
                d = getElementLeft(d) -
                    (k + l);
                0 != d && (7 == browserVersion ? 0 < d && (b.style.position = "", b.style.top = "0px", b.style.left = "0px") : b.style.left = k + l - d + "px");
            } else b.style.top = i + "px", b.style.position = ""
        } else g - i - e > 0.85 * c ? b.style.display = "block" : 272 < g - i - e && -1 == a.indexOf("No") ? (a += "No", d = document.getElementById("advZone" + a), c = 320, d && ("Sticky" == a ? clearTimeout(t_showFooterPopup) : clearTimeout(t_showFooterPopup1), advScroll(a, c, f), b.style.display = "none")) : !1 === admStickyHide ? (b.style.display = "block", b.style.position = "") : b.style.display = "none";
    "string" == typeof f ? "Sticky" == a ? t_showFooterPopup = setTimeout("advScroll('" + a + "'," + c + ",'" + f + "')", 50) : t_showFooterPopup1 = setTimeout("advScroll('" + a + "'," + c + ",'" + f + "')", 50) : "Sticky" == a ? t_showFooterPopup = setTimeout("advScroll('" + a + "'," + c + "," + f + ")", 50) : t_showFooterPopup1 = setTimeout("advScroll('" + a + "'," + c + "," + f + ")", 50)
}