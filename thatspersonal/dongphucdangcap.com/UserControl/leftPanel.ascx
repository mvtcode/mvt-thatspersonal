<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="leftPanel.ascx.cs" Inherits="dongphucdangcap.com.UserControl.leftPanel" %>
<div class="fixedScrollDetector"></div>
<div class="col-left clearfix">
    <div class="block block-leftnav">
        <div class="block-title">
            <strong><span>Shop</span></strong></div>
        <div class="block-content">
            <ul id="leftnav">
                <!-- HOME BUTTON HACK -->
                <!-- <li class="home "><a href=""><span></span></a></li> -->
                <!-- HOME BUTTON HACK -->
                <li class="active parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)">
                    <a href="#"><span class="nav-link">Phái nữ</span></a>
                    <ul>
                        <li class="first"><a href="#"><span class="nav-link">Lingerie</span> </a></li>
                        <li><a href="#"><span class="nav-link">Costume</span> </a></li>
                        <li><a href="#"><span class="nav-link">Accessories</span> </a></li>
                        <li class="last"><a href="#"><span class="nav-link">Hygiene &amp; Sensual</span> </a>
                        </li>
                    </ul>
                </li>
                <li class="parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)">
                    <a href="#"><span class="nav-link">Phái nam</span></a>
                    <ul>
                        <li class="first"><a href="#"><span class="nav-link">Lingerie</span> </a></li>
                        <li><a href="#"><span class="nav-link">Costume</span> </a></li>
                        <li><a href="#"><span class="nav-link">Accessories</span> </a></li>
                        <li class="last"><a href="#"><span class="nav-link">Hygiene &amp; Sensual</span> </a>
                        </li>
                    </ul>
                </li>
                <li class="parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)">
                    <a href="#"><span class="nav-link">Phụ kiện</span></a>
                    <ul>
                        <li class="first"><a href="#"><span class="nav-link">Lingerie</span> </a></li>
                        <li><a href="#"><span class="nav-link">Costume</span> </a></li>
                        <li><a href="#"><span class="nav-link">Accessories</span> </a></li>
                        <li class="last"><a href="#"><span class="nav-link">Hygiene &amp; Sensual</span> </a>
                        </li>
                    </ul>
                </li>
                <li class="parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)">
                    <a href="#"><span class="nav-link">Ấn phẩm</span></a>
                    <ul>
                        <li class="first"><a href="#"><span class="nav-link">Lingerie</span> </a></li>
                        <li><a href="#"><span class="nav-link">Costume</span> </a></li>
                        <li><a href="#"><span class="nav-link">Accessories</span> </a></li>
                        <li class="last"><a href="#"><span class="nav-link">Hygiene &amp; Sensual</span> </a>
                        </li>
                    </ul>
                </li>
                <li class="parent" onmouseover="toggleMenu(this,1)" onmouseout="toggleMenu(this,0)">
                    <a href="#">Mỹ phẩm</a> </li>
            </ul>
        </div>
    </div>
    <!--Promotions -->
    <div class="block com-left-block">
        <div class="block-title">
            <strong><span>Tâm điểm</span></strong></div>
        <div class="block-content hot-pics">
            <div class="slideshow2  slideshow-com">
                <img class="active" src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/78x/9df78eab33525d08d6e5fb8d27136e95/I/S/ISHFS000241_2.jpg"
                    onclick="window.location.href=&quot;http://www.thatspersonal.com/hot-picks.html&quot;;return false;"
                    width="78" height="78" alt="" style="opacity: 1;">
                <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/78x/9df78eab33525d08d6e5fb8d27136e95/I/S/ISENFS000264_4.jpg"
                    onclick="window.location.href=&quot;http://www.thatspersonal.com/hot-picks.html&quot;;return false;"
                    width="78" height="78" alt="" style="opacity: 1;" class="">
            </div>
            <div class="slideshow4  slideshow-com">
                <img class="active" src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/78x/9df78eab33525d08d6e5fb8d27136e95/I/K/IKGFS000116_9.jpg"
                    onclick="window.location.href=&quot;http://www.thatspersonal.com/hot-picks.html&quot;;return false;"
                    width="78" height="78" alt="" style="opacity: 1;">
                <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/78x/9df78eab33525d08d6e5fb8d27136e95/I/P/IPJLO00084_5.jpg"
                    onclick="window.location.href=&quot;http://www.thatspersonal.com/hot-picks.html&quot;;return false;"
                    width="78" height="78" alt="" style="opacity: 1;" class="">
            </div>
        </div>
    </div>
</div>

<!--Slide 4 random product hot-->
<script type="text/javascript">
    function slideSwitch() {
        var $active;
        var $jactive = $('.slideshow7 IMG.active,.slideshow1 IMG.active, .slideshow2 IMG.active,.slideshow3 IMG.active, .slideshow4 IMG.active, .slideshow5 IMG.active');

        if ($jactive.length == 0) $active = $('.slideshow IMG:last');

        // use this to pull the images in the order they appear in the markup
        var $jnext = $jactive.next().length ? $jactive.next()
        : $('.slideshow7 IMG:first, .slideshow1 IMG:first,.slideshow2 IMG:first, .slideshow3 IMG:first,.slideshow4 IMG:first, .slideshow5 IMG:first');

        $jactive.addClass('last-active');

        $jnext.css({ opacity: 0.0 })
        .addClass('active')
        .animate({ opacity: 1.0 }, 1000, function() {
            $jactive.removeClass('active last-active');
        });
    }

    $(function() {
        setInterval("slideSwitch()", 1000);
    });

</script>

