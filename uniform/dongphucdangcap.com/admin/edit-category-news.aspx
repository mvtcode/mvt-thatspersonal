<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-category-news.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_category_news" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navi-action">
        <asp:Literal runat="server" EnableViewState="False" ID="ltrThongbao" />
        <div class="clear">
        </div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            <% if (IsEdit)
               { %>Cập nhật nhóm tin tức<% }
               else
               {
                %>
                   Thêm mới nhóm tin
                <%
               } %>
            
        </div>
        <div class="toolbar-action">
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="Unnamed1_Click"><span class="toolbar-update-back"></span>Lưu và quay lại</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="Unnamed1_Click2"><span class="toolbar-insert"></span>Lưu và thêm mới</asp:LinkButton>
                  <a><span class="toolbar-support"></span>Hướng dẫn </a></li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Tên nhóm tin</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtCategoryname" Width="100%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Sắp xếp</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtSort" Width="100px"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Phần mô tả seo</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtMota" Width="100%" TextMode="MultiLine"/>
                </td>
            </tr>
             <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Phần keyword</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtTukhoa" Width="100%" TextMode="MultiLine"/>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
