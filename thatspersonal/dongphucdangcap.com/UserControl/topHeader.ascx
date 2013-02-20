<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="topHeader.ascx.cs" Inherits="dongphucdangcap.com.UserControl.topHeader" %>
<div class="header-container">
    <!--top navigation-->
    <div class="cms-links">
        <ul>
            <li class="welcome"></li>
            <li class="contact"><span><a href="#">LIÊN HỆ</a></span> <span class="contact-no">0985032797</span></li>
            <li class="socio"><a href class="twitter-ico">Twitter</a><a href="#" class="facebook-ico">Facebook</a></li>
        </ul>
    </div>
    <div class="access">
        <ul class="links">
            <li class="first"><a href="#">Giỏ hàng</a></li>
            <li><a href="#">Hướng dẫn mua hàng</a></li>
            <li class=" last"><a href="#" title="Đăng nhập">Đăng nhập</a></li>
        </ul>
        <!--search header-->
        <div class="to-sear">
            <form id="search_mini_form" action="#" method="get">
            <div class="form-search">
                <label for="search">
                    Search</label>
                <input id="search" type="text" name="q" value="" class="input-text" />
                <input type="image" class="search_btn" src="/Content/images/icons/search_ico.gif"
                    value="Go" />
                <div id="search_autocomplete" class="search-autocomplete">
                </div>
            </div>
            </form>
        </div>
    </div>
</div>
