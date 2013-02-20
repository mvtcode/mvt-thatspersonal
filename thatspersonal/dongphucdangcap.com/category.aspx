<%@ Page Title="" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="dongphucdangcap.com.category" %>
<%@ Register TagName="leftPanel" TagPrefix="usc" Src="UserControl/leftPanel.ascx" %>
<%@ Register TagName="topNavigate" TagPrefix="usc" Src="UserControl/topNavigate.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--img ads -->
    <p class="category-image">
        <a href="#">
            <img src="http://www.thatspersonal.com/media/catalog/category/forher_lingeriee.jpg"
                 alt="Lingerie" title="Lingerie" /></a>
    </p>
    <!--Left panel-->
    <usc:leftPanel runat="server" />
    <div id="main-right">
        <!--top navigate-->
        <usc:topNavigate runat="server" />
        <!--option filter-->
        <div class="block-content">
            <ul id="nav-one" class="dropmenu">
                <li class="filterblock">
                    <div class="filterblock-guid">
                        Lọc sản phẩm theo:</div>
                </li>
                <li class="filterblock">
                    <a href="#" class="adj-nav-dt">Mức giá<span class="arrow"></span></a>
                    <ul>
                        <li>
                            <a style="color: #D96708" class="multi-select " href="#">Tất cả</a>
                        </li>   
                        <li>
                            <a href="#"><span class="price">375.000 VNĐ</span> - <span class="price">12.633 VNĐ</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="price">2.666.000 VNĐ</span> - <span class="price">5.331.000 VNĐ</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="price">5.332.000 VNĐ</span> - 7.999.000 VNĐ</a>
                        </li>
                    </ul>
                </li>
                <li class="filterblock"><a href="#" class="adj-nav-dt">Kích thước<span class="arrow"></span></a></li>
                <li class="filterblock"><a href="#" class="adj-nav-dt">Quan tâm<span class="arrow"></span></a></li>
            </ul>
            <div class="clear">
            </div>
        </div>
        <!--product -->
        <div class="category-products">
            <ul class="products-grid">
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
                <li class="item"><a href="#" title="MaleBasics Lacey Body" class="product-image">
                                     <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/240x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMBMI000260_3.jpg"
                                          width="240" height="240" alt="MaleBasics Lacey Body" />
                                     <div class="price-box">
                                         <span class="regular-price"><span class="price">495.000 VNĐ</span> </span>
                                     </div>
                                 </a>
                    <div class="product-name">
                        <h2 class="product-name">
                            MaleBasics Lacey Body</h2>
                        <div class="actions">
                            <span class="view-details"><a href="#" title="MaleBasics Lacey Body">Xem chi tiết</a></span>
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick=" setLocation('http://www.thatspersonal.com/checkout/cart/add/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci5odG1s/product/3223/') ">
                                <span>Add to Cart</span></button>
                        </div>
                    </div>
                </li>
            </ul>
            <%--<div class="toolbar-bottom">
                <div class="pager">
                </div>
                <div class="toolbar">
                    <div class="pager">
                        <p class="amount">
                            <strong>12 Item(s)</strong>
                        </p>
                        <div class="limiter">
                            <label>
                                Show</label>
                            <select onchange="setLocation(this.value)">
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?limit=9">9 </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?limit=15">15
                                </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?limit=30">30
                                
                                </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?limit=900" selected="selected">
                                    900 </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?limit=all">All</option>
                            </select>
                            per page
                        </div>
                    </div>
                    <div class="sorter">
                        <p class="view-mode">
                        </p>
                        <div class="sort-by">
                            <label>
                                Sort By</label>
                            <select onchange="setLocation(this.value)">
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?dir=asc&amp;order=position"
                                        selected="selected">Position </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?dir=asc&amp;order=name">
                                    Name </option>
                                <option value="http://www.thatspersonal.com/for-him/innerwear.html?dir=asc&amp;order=price">
                                    Price </option>
                            </select>
                            <a href="http://www.thatspersonal.com/for-him/innerwear.html?dir=desc&amp;order=position"
                               title="Set Descending Direction">
                                <img src="http://www.thatspersonal.com/skin/frontend/default/secretshop/images/i_asc_arrow.gif"
                                     alt="Set Descending Direction" class="v-middle"></a>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>

        <script type="text/javascript">
            defaultPage.FitProductOnCategory();
        </script>

    </div>
</asp:Content>