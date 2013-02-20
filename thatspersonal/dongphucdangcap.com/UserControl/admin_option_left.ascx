<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="admin_option_left.ascx.cs" Inherits="dongphucdangcap.com.UserControl.admin_option_left" %>
<div id="optSideLeft">
    <div class="sideLeft">
        <h3>Truy cập nhanh hệ thống</h3>
        <div class="clearfix mainoption">
            <ul>
                <li>
                    <a href="edit-product.aspx">
                        <span id="product-add"></span>
                        Thêm sản phẩm mới
                    </a>
                </li>
                <li>
                    <a href="list-product.aspx">
                        <span id="product-list"></span>
                        Danh sách sản phẩm
                    </a>
                </li>
                <%--<li>
                    <a href="#">
                        <span id="product-category"></span>
                        Danh mục sản phẩm
                    </a>
                </li>--%>
                <li>
                     <a href="/admin/edit-news.aspx">
                        <span class="news-add"></span>
                        Thêm tin mới
                    </a>
                </li>
                <li>
                    <a href="/admin/list-news.aspx">
                        <span class="news-add"></span>
                        Danh sách tin tức
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span id="statitics"></span>
                        Thống kê
                    </a>
                </li>
                 <li>
                    <a href="#">
                        <span id="order-list"></span>
                        Danh sách đơn hàng
                    </a>
                </li>
                 <li>
                    <a href="/admin/list-customer.aspx">
                        <span id="user-profile"></span>
                        Danh sách khách hàng
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span id="site-setting"></span>
                        Cấu hình website
                    </a>
                </li> 
                <li>
                    <a href="/admin/update-slider.aspx">
                        <span id="site-slide"></span>
                        Quản lý ảnh slide
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>