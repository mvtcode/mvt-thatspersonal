<%@ Page Title="Admin panel - Quản trị vùng" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-template-other.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_template" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Cập nhật thông tin vùng website
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton runat="server" ID="btnAc" onclick="btnAc_Click">
                        <span class="toolbar-update"></span>
                        Lưu
                    </asp:LinkButton>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                 </li>
            </ul>
        </div>
    </div>
    <div class="div-search clearfix">
        <div style="float: left">
            Chọn khu vực cần sửa
            <asp:DropDownList runat="server" ID="drpKhuvuc" AutoPostBack="True" 
                onselectedindexchanged="drpKhuvuc_SelectedIndexChanged">
                <asp:ListItem Text="[ Mời chọn ]" Value="0" Selected="True"/>
                <asp:ListItem Text="Hỗ trợ trực tuyến - Đầu banner" Value="1" />
                <asp:ListItem Text="Danh sách cộng tác viên" Value="2" />
            </asp:DropDownList>
        </div>
    </div>
    <asp:Panel runat="server" ID="panelSupport">
        <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Nội dung    
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtSupport" Width="100%" TextMode="MultiLine" Height="300px" />
                </td>
            </tr>
        </tbody>
    </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="panelCTV">
        <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Nội dung
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtCTV" Width="100%" TextMode="MultiLine" Height="300px"/>
                </td>
            </tr>
        </tbody>
        </table>
    </asp:Panel>
</asp:Content>
