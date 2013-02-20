<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="admin_header.ascx.cs"
            Inherits="dongphucdangcap.com.UserControl.admin_header" %>
<div id="header" class="clearfix">
    <div class="w96percent">
        <ul>
            <li>Xin chào <strong><%= Username %></strong></li>
            <li id="logout"><a href="logout.aspx">Đăng xuất</a></li>
            <li id="viewWS"><a href="/" title="Xem website" target="_blank">Xem website</a></li>
            <li id="yahoosupport">
                <div id="showyahoosupport">
                        <strong>Mọi thắc mắc hỗ trợ xin liên hệ số điện thoại 0985 032 797</strong><br/>
                        <p style="text-align: center">
                            <a class="yahoo" href="ymsgr:sendIM?tuan.it89"><img border="0" align="absmiddle" alt="Chat Yahoo" src="http://opi.yahoo.com/online?u=tuan.it89&amp;m=g&amp;t=1"></a>
                            <a class="skype" href="skype:tuancva211?call"><img src="/Content/admin/skype64.png"></a>
                        </p>
                </div>
                <a href="javascript:void(0);" id="need-support">Bạn cần hỗ trợ?</a> </li>
        </ul>
        <div class="clear"></div>
        <div class="userstatus">
            Hình thức sử dụng: <span style="font-weight: bold; font-style: italic;">Mãi mãi</span>
            | Khởi tạo 03/10/2012
        </div>
        <!--navigate-->
        <div id="navi" class="clearfix">
            <ul id="navigate">
                <li><a data-name="home" class="active" href="/admin/">Tổng quan</a></li>
                <li>
                    <a data-name="product" href="list-product.aspx">Sản phẩm</a>
                    <ul>
                        <li><a class="icon_add" href="edit-product.aspx">Thêm đồng phục</a></li>
                        <li><a class="icon_list" href="list-product.aspx">Danh sách đồng phục</a></li>
                        <li><a class="icon_category" href="list-category-product.aspx">Danh sách danh mục</a></li>
                        <li><a class="icon_add" href="edit-category-product.aspx">Thêm danh mục</a></li>
                        <li><a class="icon_category" href="edit-order-product.aspx">Danh sách đơn hàng</a></li>
                    </ul>
                </li>
                <%--<li>
                    <a data-name="career" href="list-career.aspx">Tuyển dụng</a>
                    <ul>
                        <li><a class="icon_order" href="list-career.aspx">Danh sách tin tuyển dụng</a></li>
                        <li><a class="icon_feedback" href="edit-career.aspx">Thêm mới tin tuyển dụng</a></li>
                        <li><a class="icon_order" href="list-category-career.aspx">Danh sách nhóm tuyển dụng</a></li>
                        <li><a class="icon_feedback" href="edit-category-career.aspx">Thêm mới nhóm tuyển dụng</a></li>
                    </ul>
                </li>--%>
                <li>
                    <a data-name="news" href="list-news.aspx">Tin tức</a>
                    <ul>
                        <li><a class="icon_add" href="edit-news.aspx">Tạo bài viết tin tức</a></li>
                        <li><a class="icon_list" href="list-news.aspx">Quản lý Tin tức</a></li>
                        <li><a class="icon_add" href="edit-category-news.aspx">Thêm mới nhóm tin tức</a></li>
                        <li><a class="icon_list" href="list-category-news.aspx">Danh mục tin tức</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="partner" href="list-partner.aspx">Đối tác</a>
                    <ul>
                        <li><a class="icon_order" href="list-partner.aspx">Danh sách đối tác</a></li>
                        <li><a class="icon_feedback" href="edit-partner.aspx">Tạo mới</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="user">Quản lý người dùng</a>
                    <ul>
                        <li><a class="icon_list" href="list-user.aspx">Danh sách</a></li>
                        <li><a class="icon_add" href="edit-user.aspx">Thêm mới</a></li>
                        <li><a class="icon_sms" href="update-profile-user.aspx">Cập nhật thông tin cá nhân</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="customer">Quản lý khách hàng</a>
                    <ul>
                        <li><a class="icon_list" href="list-customer.aspx">Danh sách</a></li>
                        <li><a class="icon_add" href="edit-customer.aspx">Thêm mới</a></li>
                        <%--<li><a class="icon_sms" href="update-profile-customer.aspx">Cập nhật thông tin</a></li>--%>
                    </ul>
                </li>
                <%--<li>
                    <a>Cài đặt SEO</a>
                    <ul>
                        <li><a class="icon_tag">Quản lý Tag</a></li>
                        <li><a class="icon_config">Cài đặt Google Analytics</a></li>
                        <li><a class="icon_link">Liên kết website</a></li>
                    </ul>
                </li>--%>
                <%--<li>
                    <a data-name="promote">Khuyến mại</a>
                    <ul>
                        <li><a class="icon_list" href="list-promote.aspx">Danh sách khuyến mại</a></li>
                        <li><a class="icon_add" href="edit-promote.aspx">Thêm chương trình</a></li>
                        <li><a class="icon_list" href="list-user-promote.aspx">Danh sách người dùng nhận khuyến mại</a></li>
                    </ul>
                </li>--%>
                <li>
                    <a data-name="other">Cài đặt chung</a>
                    <ul>
                        <li><a class="icon_support" href="list-chatbox-other.aspx">Quản lý phản hồi chatbox</a></li>
                        <li><a class="icon_footer" href="edit-template-other.aspx">Thay đổi vùng website</a></li>
                        <li><a class="icon_order" href="seo-other.aspx">Seo toàn trang</a></li>
                        <li><a class="icon_adz" href="list-slideshow.aspx">Thay đổi slide chạy</a></li>
                        <li><a class="icon_stats">Thống kê</a></li>
                        <li><a class="icon_config">Cấu hình website</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>