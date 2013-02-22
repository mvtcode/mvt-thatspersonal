<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="ChiTiet.aspx.cs" Inherits="dongphucdangcap.com.ChiTiet" %>
<%@ Register src="UserControl/topNavigate.ascx" tagPrefix="usc" tagName="nav"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Scripts/hello.jquery.js" type="text/javascript"></script>
    <script src="/Scripts/cloud-zoom.1.0.2.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-title" style="padding:0">
        <usc:nav runat="server" />
    </div>
    <div id="messages_product_view"></div>
    <div id="product-top" class="product-view">
        <div class="product-essential">
            <div class="product-shop">
                <div class="product-name">
                    <h1>Áo vest nam</h1>
                </div>
                <div class="short-description">
                    <h2>Tổng quan sản phẩm</h2>
                    <div class="std">
                        Vest da nam, chẻ dọc phía trước
                    </div>
                </div>
               <p class="email-friend"><a href="http://www.thatspersonal.com/sendfriend/product/send/id/3180/cat_id/15/">Email to a Friend</a></p>
                <div class="price-box">
                    <span class="regular-price" id="product-price-3180"><span class="price">219.999 VNĐ</span></span>
                </div>
                <div class="product-options" id="product-options-wrapper">
                    <dl class="last">
                        <dt>
                            <label class="required"><em>*</em>Size</label>
                        </dt>
                        <dd class="last">
                            <div class="input-box">
                                <div class="input-box-inner">
                                    <select name="super_attribute[139]" id="attribute139">
                                        <option value="">Select</option>
                                        <option value="18">S</option>
                                        <option value="17">M</option>
                                        <option value="191">L</option>
                                        <option value="190">XL</option>
                                    </select>
                                </div>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div>
                    <div class="bottom-price">
                        <div class="price-box">
                            <span class="regular-price" id="product-price-3180_clone"><span class="price">219.999 VNĐ</span>
                            </span>
                        </div>
                    </div>
                    <div class="qty-field">
                        <label for="qty">
                            Số lượng:</label>
                        <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="input-text qty" />
                    </div>
                    <div class="clear-textfield">
                    </div>
                    <div class="cart-share">
                        <button type="button" title="Add to Cart" class="button btn-cart" onclick="productAddToCartForm.submit(this)">
                            <span>Thêm vào giỏ hàng</span></button>
                    </div>
                </div>
                <ul class="add-to-links">
                    <li class="share-button">
                        <!-- AddThis Button BEGIN -->
                        <div class="addthis_toolbox addthis_default_style">
                            <a class="addthis_button_compact" href="#"><span class="at16t_compact">
                                </span>Chia sẻ</a>
                            <div class="clear"></div>
                        </div>

                        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-500e3cf75dcacfc8"></script>

                        <!-- AddThis Button END -->
                    </li>
                    <!--    <li><span class="separator">|</span> <a href="http://www.thatspersonal.com/catalog/product_compare/add/product/3180/uenc/aHR0cDovL3d3dy50aGF0c3BlcnNvbmFsLmNvbS9mb3ItaGltL2lubmVyd2Vhci9tZW4tcy1sZWF0aGVyLXZlc3QuaHRtbA,,/" class="link-compare">Add to Compare</a></li>
-->
                </ul>
            </div>
            <div class="product-img-box">
                <p class="product-image">
                    <div id="wrap" style="top: 0px; z-index: 99; position: relative;">
                        <a href="http://www.thatspersonal.com/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/I/E/IEMMI00033_3.jpg"
                            class="cloud-zoom" id="zoom1" rel="position:'right',showTitle:1,titleOpacity:0.5,lensOpacity:0.5,adjustX: 10,adjustY:-4"
                            style="position: relative; display: block;">
                            <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/image/265x265/9df78eab33525d08d6e5fb8d27136e95/I/E/IEMMI00033_3.jpg"
                                alt="" title="/IEMMI00033.jpg" style="display: block;">
                        </a>
                        <div class="mousetrap" >
                        </div>
                    </div>
                </p>
                <div class="more-views">
                    <h2>
                        More Views</h2>
                    <ul>
                        <li><a class="group" rel="group" href="http://www.thatspersonal.com/media/catalog/product/cache/1/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/I/E/IEMMI00033_3.jpg"
                            title="/IEMMI00033.jpg">
                            <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/thumbnail/70x70/9df78eab33525d08d6e5fb8d27136e95/I/E/IEMMI00033_3.jpg"
                                alt="IEMMI00033.jpg">
                        </a></li>
                    </ul>
                </div>
            </div>
            <div class="clearer">
            </div>
        </div>
        <div class="product-collateral">
        </div>
        <div class="product-bottom-list">
            <div class="left-product-section">
                <ul class="product-lateral">
                    <li id="description">
                        <div class="description-tab product-top-tab">
                            <div class="dsp1sub">
                                <span class="dsp1 font-benton">Thông tin sản phẩm</span></div>
                            <div class="dsp2sub">
                                <span class="com-rea">
                                    <a href="#product-top">Back to Top</a>
                                </span>
                            </div>
                        </div>
                        <div class="description-content content-show expander">
                            When a man dons leather, he becomes a hunk. Men's leather vest with side pocket
                            and snap front.
                        </div>
                    </li>
                    <li id="reviews">
                        <div class="description-tab product-top-tab" style="width: 600px">
                            <div class="dsp1sub"><span class="dsp1 font-benton">Phản hồi người dùng</span></div>
                             <fb:comments href="http://dongphucdangcap.com/bang-gia.htm" data-num-posts="3" data-width="600"></fb:comments>                        </div>
                    </li>
                </ul>
            </div>
            <div class="right-product-section">
            </div>
        </div>
    </div>
    <script type="text/javascript">
        jQuery("a.group").fancybox({ 'zoomSpeedIn': 300, 'zoomSpeedOut': 300, 'overlayShow': true }); 	
    </script>
</asp:Content>
