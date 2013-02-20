<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="edit-category-product.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_category_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .TextLeft
        {
            display: inline-block;
            /*width: 180px;            
            float: left;*/
        }
        .TextRight
        {
            display: inline-block;
            padding-left: 8px;
            /*float: left;*/
        }
        .textcontent
        {
            width: 100%;
            clear: both;
            padding-top: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%--<div class="navi-action">
        <asp:Literal runat="server" EnableViewState="False" ID="ltrThongbao" />
        <div class="clear">
        </div>
    </div>--%>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
          <% if(IsEdit){%>
                    Cập nhật nhóm sản phẩm<% }else{%>
                    Thêm nhóm sản phẩm<%} %>
        </div>
        <div class="toolbar-action">
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="BT_Save_Click"><span class="toolbar-update-back"></span>Lưu và quay lại</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="BT_Save_Click2"><span class="toolbar-insert"></span>Lưu và thêm mới</asp:LinkButton>
                  <a><span class="toolbar-support"></span>Hướng dẫn </a></li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                Thêm mới loại sản phẩm</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Name" runat="server" MaxLength="100" Width="150px" />
                </td>
            </tr>
        </tbody>
    </table>
    <input type="hidden" runat="server" id="HD_ID" value="0" />
</asp:Content>
