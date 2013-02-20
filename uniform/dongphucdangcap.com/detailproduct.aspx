<%@ Page Title="" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true" CodeBehind="detailproduct.aspx.cs" Inherits="dongphucdangcap.com.detailproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(".scroll-pane").jScrollPane({ maintainPosition: false });
        $(function() {
            var pane = $('.scroll-pane');
            pane.jScrollPane();
            var api = pane.data('jsp');
            setInterval(api.reinitialise, 250);
        })(jQuery);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="w900">
        <div class="addthisz" id="scrollbarbox">
    <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_counter_style" style="padding: 5px;text-align: center;border-radius: 10px 8px;width: 60px;"  >
        <a class="addthis_button_facebook_like" <%= "fb:like:layout=\"box_count\"" %>></a>
        <a class="addthis_button_tweet" tw:count="vertical"></a>
        <a class="addthis_button_google_plusone" <%= "g:plusone:size=\"tall\""%>></a>
        <a class="addthis_counter"></a>
        </div>
        <script type="text/javascript">            var addthis_config = { "data_track_addressbar": false };</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4f2762d733ded547"></script>
        <!-- AddThis Button END -->
        </div>
    </div>
    <div class="w900 clearfix">
        <div class="group-products">
            <div class="menu-headlines">
                <ul>
                    <li><a href="#">MẪU ÁO MỚI</a></li>
                    <li><a href="#">ÁO CỔ TRÒN</a></li>
                    <li><a href="#">ÁO CỔ BẺ</a></li>
                    <li><a href="#">ÁO CÔNG TY</a></li>
                    <li><a href="#">HUY HIỆU</a></li>
                    <li><a href="#">MŨ ĐỒNG PHỤC</a></li>
                    <li><a href="#">ÁO MÀU ĐEN</a></li>
                    <li><a href="#">ÁO MÀU TRẮNG</a></li>
                </ul>
            </div>
            <div class="products-main">
                <div class="scroll-pane">
                       <div class="detailproduct">
                            <h2>Áo đồng phục cho các bạn lớp 10A2 Nam Sách nè</h2>
                           <div class="productImage">
                                <img src="/Content/images/detailproduct1.png"/>
                            </div>
                            <div class="moreimages clearfix">
                                <h3>Sản phẩm liên quan</h3>
                                <ul>
                                    <li>
                                        <a><img src="/Content/images/anhsp.png"/></a>
                                        <a href="" class="moreimages-a">Hihihi</a>
                                    </li>
                                    <li>
                                        <a><img src="/Content/images/anhsp.png"/></a>
                                        <a href="" class="moreimages-a">Hihihi</a>
                                    </li>
                                    <li>
                                        <a><img src="/Content/images/anhsp.png"/></a>
                                        <a href="" class="moreimages-a">Hihihi</a>
                                    </li>
                                    <li>
                                        <a><img src="/Content/images/anhsp.png"/></a>
                                        <a href="" class="moreimages-a">Hihihi</a>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                           </div>
                        <div class="user-template">
                            <h4>Xem thêm</h4>
                            <p><a href="#">ao dong phuc | </a><a href="#">dong phuc dang cap |</a><a href="#"> ao lop</a></p>
                        </div>
                         <div class="fb-comments" style="background-color: white" data-href="http://example.com" data-num-posts="5" data-width="670"></div>
                </div> 
            </div>
        </div>
    </div>
    </div>
</asp:Content>