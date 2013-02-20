<%@ Page Title="" Language="C#" MasterPageFile="~/UniMaster.Master" AutoEventWireup="true"
    CodeBehind="products.aspx.cs" Inherits="dongphucdangcap.com.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Scripts/jquery.fancybox.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".scroll-pane").jScrollPane();
            $(".yoxview").fancybox();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w900 clearfix" style="padding-top: 50px">
        <div class="group-products">
            <div class="menu-headlines">
               <%= BindNavMenu() %>
            </div>
            <div class="products-main" style="margin-top: -13px">
                <div class="scroll-pane">
                    <%= BindGridProduct() %>
                    <%--<div class="product-items">
                        <a href="/Content/images/a5.jpg" rel="gallery1" title="The first image"  class="products-page-a yoxview"><img  title="The first image" src="/Content/images/product-item1.png" /></a>
                        <a href="#" class="productname">Áo đồng phục</a>
                    </div>--%>
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
</asp:Content>
