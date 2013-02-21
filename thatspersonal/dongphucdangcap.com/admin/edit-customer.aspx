<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-customer.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_customer" %>
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
          <% if(IsEdit){%>
                    Cập nhật thông tin người dùng<% }else{%>
                    Thêm mới người dùng<%} %>
        </div>
        <div class="toolbar-action">
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="Unnamed1_Click"><span class="toolbar-update-back"></span>Lưu và quay lại</asp:LinkButton>
                    <%--<asp:LinkButton ID="LinkButton2" runat="server" onclick="Unnamed2_Click"><span class="toolbar-insert"></span>Lưu và thêm mới</asp:LinkButton>--%>
                  <a><span class="toolbar-support"></span>Hướng dẫn </a></li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Email</td>
                <td class="tblSkinValueColumn">
                    <asp:Label ID="LB_Email" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Họ
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="TB_FirstName" Width="200px"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Tên
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="TB_LastName" Width="200px"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Phone
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="TB_Phone" Width="200px"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Địa chỉ
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="TB_Address" Width="200px"/>
                </td>
            </tr>  
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Password
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="TB_Password" TextMode="Password" Width="200px"/>
                </td>
            </tr>           
        </tbody>
    </table>
</asp:Content>
