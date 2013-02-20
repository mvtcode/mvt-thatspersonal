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
                </div>
                <a href="javascript:void(0);">Bạn cần hỗ trợ?</a> </li>
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
                    </ul>
                </li>
                <li>
                    <a data-name="price" href="list-price.aspx">Bảng giá</a>
                    <ul>
                        <li><a class="icon_order" href="list-price.aspx">Danh sách tin bảng giá</a></li>
                        <li><a class="icon_feedback" href="edit-price.aspx">Thêm mới tin bảng giá</a></li>
                        <li><a class="icon_order" href="list-category-price.aspx">Danh sách nhóm bảng giá</a></li>
                        <li><a class="icon_feedback" href="edit-category-price.aspx">Thêm mới nhóm bảng giá</a></li>
                    </ul>
                </li> 
                <li>
                    <a data-name="consult" href="list-consult.aspx">Tư vấn</a>
                    <ul>
                        <li><a class="icon_order" href="list-consult.aspx">Danh sách tin tư vấn</a></li>
                        <li><a class="icon_feedback" href="edit-consult.aspx">Thêm mới tin tư vấn</a></li>
                        <li><a class="icon_order" href="list-category-consult.aspx">Danh sách nhóm tư vấn</a></li>
                        <li><a class="icon_feedback" href="edit-category-consult.aspx">Thêm mới nhóm tư vấn</a></li>
                    </ul>
                </li>  
                <li>
                    <a data-name="career" href="list-career.aspx">Tuyển dụng</a>
                    <ul>
                        <li><a class="icon_order" href="list-carreer.aspx">Danh sách tin tuyển dụng</a></li>
                        <li><a class="icon_feedback" href="edit-carreer.aspx">Thêm mới tin tuyển dụng</a></li>
                        <li><a class="icon_order" href="list-category-carreer.aspx">Danh sách nhóm tuyển dụng</a></li>
                        <li><a class="icon_feedback" href="edit-category-carreer.aspx">Thêm mới nhóm tuyển dụng</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="news" href="list-news.aspx">Tin tức</a>
                    <ul>
                        <li><a class="icon_add" href="edit-news.aspx">Tạo bài viết tin tức</a></li>
                        <li><a class="icon_list" href="list-news.aspx">Quản lý Tin tức</a></li>
                        <li><a class="icon_add" href="edit-category-news.aspx">Danh mục nhóm tin tức</a></li>
                        <li><a class="icon_list" href="list-category-news.aspx">Danh mục tin tức</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="about" href="list-about.aspx">Giới thiệu</a>
                    <ul>
                        <li><a class="icon_order" href="list-about.aspx">Danh sách tin giới thiệu</a></li>
                        <li><a class="icon_feedback" href="edit-about.aspx">Thêm mới tin giới thiệu</a></li>
                        <li><a class="icon_order" href="list-category-about.aspx">Danh sách nhóm giới thiệu</a></li>
                        <li><a class="icon_feedback" href="edit-category-about.aspx">Thêm mới nhóm giới thiệu</a></li>
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
                    <a>Cài đặt SEO</a>
                    <ul>
                        <li><a class="icon_tag">Quản lý Tag</a></li>
                        <li><a class="icon_config">Cài đặt Google Analytics</a></li>
                        <li><a class="icon_link">Liên kết website</a></li>
                    </ul>
                </li>
                <li>
                    <a data-name="other">Cài đặt chung</a>
                    <ul>
                        <li><a class="icon_support" href="list-chatbox-other.aspx">Quản lý phản hồi chatbox</a></li>
                        <li><a class="icon_footer" href="edit-template-other.aspx">Thay đổi vùng website</a></li>
                        <li><a class="icon_adz" href="list-slideshow.aspx">Thay đổi slide chạy</a></li>
                        <li><a class="icon_stats">Thống kê</a></li>
                        <li><a class="icon_config">Cấu hình website</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>