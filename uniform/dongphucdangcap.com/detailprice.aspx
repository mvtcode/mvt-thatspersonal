<%@ Page Title="" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true" CodeBehind="detailprice.aspx.cs" Inherits="dongphucdangcap.com.detailprice" %>
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
        <div class="newgroup clearfix">
            <div class="news-headlines">
                <ul>
                    <li><a href="#">TUYỂN CTV</a></li>
                    <li><a href="#">TUYỂN NHÂN VIÊN</a></li>
                    <li><a href="#">ĐĂNG KÝ ĐẠI LÝ</a></li>
                </ul>
            </div>
            <div class="newsmain">
                <div class="newsborder">
                    <div class="scroll-pane">
                        <%= StrNews %>
                        <%--<div class="newsdetail clearfix">
                            <h2>Tiêu đề tin tức</h2>
                            <h3>Mô tả tin tức</h3>                            <div class="newsbody">
                                12/10/2012Sử dụng thành thạo bộ phần mền Adobe (Photoshop, Illustrator, Indesign, Acrobat và plugin Pistop), Corel Draw, Artioscad, bộ phần mền Hiedelberg (Printnect Signa Station, phần mền Rip Metadimensio… ) tôi có thể đáp ứng tốt yêu cầu nhận file, kiểm tra file, bình trang, thiết kế file.Cộng với kiến thức được học ở trường ĐH SPKT, cũng như quá trình thực tập xí nghiệp tại công ty in Quân Đội 2. Ngoài ra tôi cũng biết quản lí màu trong in thử và đã làm việc được một thời gian về bình trang và kiểm tra file thủ công trên AI, corel, PDF. Tôi tin rằng sẽ mình đáp ứng tốt các yêu cầu công việc của vị trí dự tuyển.
                            </div>
                        </div>      --%>
                        <div class="fb-comments" data-href="<%= Request.RawUrl %>" data-num-posts="5" data-width="670"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
