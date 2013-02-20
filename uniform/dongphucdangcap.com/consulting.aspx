<%@ Page Title="" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true"
    CodeBehind="consulting.aspx.cs" Inherits="dongphucdangcap.com.consulting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        //$(document).ready(function() {
        // <-- Wait for the DOM to be ready
        //setTimeout(function() {
        // Now initialize the pane as before:
        $(".scroll-pane").jScrollPane({ showArrows: true, maintainPosition: false });
        //}, 3000); // <-- Waiting an additional 1000ms
        //});
        //        FB.Event.subscribe('xfbml.render', function() {
        //            console.log('Loaded!');
        //        });
        $(function() {
            var pane = $('.scroll-pane');
            pane.jScrollPane({
                showArrows: false
            });
            var api = pane.data('jsp');
            setInterval(api.reinitialise, 250);
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w900">
        <div class="newgroup clearfix">
            <div class="news-headlines">
                <ul>
                    <li><a href="#">Các bước đặt hàng</a></li>
                    <li><a href="#">Cách chọn size</a></li>
                    <li><a href="#">Bảng màu</a></li>
                    <li><a href="#">Cách bảo quản áo</a></li>
                </ul>
            </div>
            <div class="newsmain">
                <div class="newsborder">
                    <div class="scroll-pane">
                        <div class="newsdetail clearfix">
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                            <div class="newitems clearfix">
                                <h2>
                                    <a href="#">Chung kết missteen 2012</a></h2>
                                <span class="newsdatecreate">20/10/2012</span>
                                <img src="Content/images/news-thumbs.png" />
                                <p>
                                    Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm
                                    ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                                <a href="#">Xem tiếp</a>
                            </div>
                        </div>
                    </div>
                    <div class="pager">
                        <a href="#">|<</a> <a href="#"><</a> <a href="#">1</a> <a href="#">2</a> <a href="#">
                            ></a> <a href="#">>|</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
