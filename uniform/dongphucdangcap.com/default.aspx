<%@ Page Title="Đồng phục | Làm áo lớp | Dong phuc | Lam ao lop | Dong phuc lop | dongphucdangcap.com" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="dongphucdangcap.com._default" %>
<%--<%@ OutputCache Duration="15000" VaryByParam="none" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Scripts/coin-slider.min.js" type="text/javascript"></script>
    <script src="/Scripts/jquery.carouFredSel-2.1.3.js" type="text/javascript"></script>
    <script src="/Scripts/jquery.fancybox.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".scroll-pane").jScrollPane();
            $("#coin-slider").coinslider({ width: 900, height: 380, delay: 2000, navigation: true });
            $(".innermauhot ul").carouFredSel({
                    auto: true,
                    prev: ".mauhot-prev",
                    next: ".mauhot-next",
                    height:190,
                    items:{visible:3}
            });
           $(".yoxview").fancybox();
        });
    </script>
    <meta name='keywords' content='dong phuc lop, đồng phục lớp, ao dong phuc, áo đồng phục, thiết kế áo đồng phục, thiet ke ao dong phuc' />
    <meta name='description' content='Ao dong phuc lop - Thiết kế Áo Đồng Phục Lớp , in áo đồng phục lớp chuyên nghiệp, tư vấn thiết kế miễn phí mẫu áo đông phục lớp đẹp' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div id="slideshow">
       <div id="coin-slider" class="w900">--%>
           <%= SlideShow %>
            <%--<a href="">
                <img src="/Content/images/banner.jpg"/>
            </a> 
            <a href="">
                <img src="/Content/images/banner-01.jpg"/>
            </a> 
            <a href="">
                <img src="/Content/images/slide1.jpg"/>
            </a>
             <a href="">
                <img src="/Content/images/slide5.png"/>
            </a>--%>
  <%--     </div>
    </div>--%>
    
     <div class="w900 clearfix" style="margin-bottom: 50px;">
        <%--<div class="top-help">
            <img src="Content/images/3star.png"/>
            <h4>Tư vấn cách chọn vải</h4>
            <p>Để chọn cho mình loại vải phù hợp bạn hãy .... làm theo hướng dẫn thế này.... hiểu chưa hả??? ờ ờ đúng đấy ... <a href="#">xem tiếp</a></p>
        </div>--%>
        <%= Top3Consult %>
        <div class="clear"></div>
    </div>
    
    <div class="mauhot w900 clearfix">
        <h3 class="headlinetop">Mẫu hot</h3>
        <div class="products">
            <div class="innermauhot clearfix">
                <%= HotProduct %>
            <%-- <ul>
                <li><a class="img-product yoxview" rel="df" href="/Content/images/product1.jpg" title="tttt">
                    <img src="/Content/images/product1.jpg" /></a> <a href="#" class="productname">Adp-H008</a>
                </li>
            </ul>--%>
            </div>
        </div>
        <div class="mauhot-next"></div>
        <div class="mauhot-prev"></div>
    </div>
    
    <div class="w900 clearfix" style="margin-bottom: 60px">
      
        <div class="menu-default">
            <a class="menu-default maudo" title="Liên hệ" href="/lien-he.html">
                <div class="menu-default-left">
                    <div class="modellienhe">
                        <span class="bigWord">Liên</span>
                        <span class="lastWord">hệ</span>
                     </div>
                </div>
                <div class="menu-default-right">
                    <span id="lienhe"></span>                    Có nhiều cách liên lạc với chúng tôi
                </div>
            </a>
            <a class="menu-default mauxanh">
                <div class="menu-default-left">
                    <div class="modelthree" style="padding-left: 30px">
                        <span class="lastWord">hướng dẫn</span>
                        <span class="bigWord">Đặt</span>
                        <span class="lastWord">hàng</span>
                    </div>
                </div>
                <div class="menu-default-right">
                    <span id="huongdandathang"></span>                    Đặt cọc > Ý tưởng > Nhận mẫu thiết kế
                </div>
            </a>
            <a class="menu-default mauxanh" href="/tuyen-dung.html">
                <div class="menu-default-left">
                    <div class="modellienhe">
                        <span class="bigWord">Tuyển</span>
                        <span class="lastWord">CTV</span>
                    </div>
                </div>
                <div class="menu-default-right">
                    <span id="tuyencongtacvien"></span>                    Công ty có nhu cầu tuyển lượng lớn CTV...                    Cơ hội hot!!!
                </div>
            </a>
            <a class="menu-default maudo">
                <div class="menu-default-left">
                    <div class="modelthree" style="padding-left: 28px">
                        <span class="lastWord">ALBUM</span>
                        <span class="bigWord">Ảnh</span>
                        <span class="lastWord">khách hàng</span>
                    </div>
                </div>
                <div class="menu-default-right">
                    <span id="banggia"></span>                    Bộ sưu tập ảnh đẹp về khách hàng
                </div>
            </a>
            <a class="menu-default maudo">
                <div class="menu-default-left">
                    <div class="modellienhe">
                        <span class="bigWord">Bảng</span>
                        <span class="lastWord">giá</span>
                    </div>
                </div>
                <div class="menu-default-right">
                    <span id="albumanhdep"></span>                    Tham khảo để chọn lựa
                </div>
            </a>
            <a class="menu-default mauxanh">
                <div class="menu-default-left">
                    <div class="modellienhe" style="padding-left: 25px">
                        <span class="bigWord">Tư vấn</span>
                        <span class="lastWord">thiết kế</span>
                    </div>
                </div>
                <div class="menu-default-right">
                    <span id="tuvanthietke"></span>                    Nhận được sự trợ giúp thiết kế nhanh nhất!!!
                </div>
            </a>
        </div>
        
    </div>
    <div class="feedback w900 clearfix">
        <div class="feedback-left">
            <div class="feedbackbox">
                <div class="feedbackleft">
                    <textarea rows="5" placeholder="Nhận xét" class="commentarea"></textarea>
                    <input type="text" class="commentinput" placeholder="Họ tên" />
                    <input type="button" value="Gửi" class="sendcomment" onclick="sendComment();"/>
                </div>
                <div class="feedbackright">
                    <div class="scroll-pane">
                        <div style="padding: 12px 3px 20px 3px">
                            <%= StrChat %>
                           <%-- <p><span class="visitor-chat">Minh xù</span>: Em thích mấy mẫu áo này quá các anh chị ơi =)))))</p>
                            <p><span class="admin-chat">Tuấn</span>: Em thích mấy mẫu áo này quá các anh chị ơi =)))))</p>--%>
                        </div>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div id="head-line">
                    Chatbox
                </div>
            </div>
        </div>
        <div class="facebook-right">
            <div class="fb-like-box" data-href="https://www.facebook.com/pages/iUniform-%C4%90%E1%BB%93ng-Ph%E1%BB%A5c-%C4%90%E1%BA%B3ng-C%E1%BA%A5p/472823769405556"
                data-width="300" data-height="250" data-show-faces="true" data-stream="false"
                data-header="false">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
