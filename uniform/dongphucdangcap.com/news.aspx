<%@ Page Title="" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="dongphucdangcap.com.news" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function() {
            $(".scroll-pane").jScrollPane();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w900">
        <div class="newgroup clearfix">
            <div class="news-headlines">
                <%= Nav %>
                <%--<ul>
                    <li><a href="#">TIN GIẢI TRÍ</a></li>
                    <li><a href="#">TIN iUNIFORM</a></li>
                    <li><a href="#">ALBUM ẢNH</a></li>
                </ul>--%>
            </div>
            <div class="newsmain">
                <div class="newsborder">
                    <div class="scroll-pane">
                        <%--<div class="newitems clearfix">
                            <h2><a href="#">Chung kết missteen 2012</a></h2>
                            <span class="newsdatecreate">20/10/2012</span>
                            <img src="Content/images/news-thumbs.png"/>
                            <p>Từng tham gia ở các cuộc thi Miss Teen 2010, Miss Teen 2011 và dừng lại khá sớm ở các vòng ngoài nhưng những cô gái xinh đẹp này vẫn quyết tâm "thi lại" Miss Teen...</p>
                            <a href="#">Xem tiếp</a>
                        </div>--%>
                        <%= GridMain %>
                    </div>
                    <div class="pager">
                        <a href="#">|<</a>
                        <a href="#"><</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">></a>
                        <a href="#">>|</a>
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
