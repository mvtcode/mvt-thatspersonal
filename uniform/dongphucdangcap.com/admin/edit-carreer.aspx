﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-carreer.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_career" %>
<%@ Import Namespace="CKFinder.Settings" %>
<%@ Register TagPrefix="ck" Namespace="CKEditor.NET" Assembly="CKEditor.NET, Version=3.6.2.0, Culture=neutral, PublicKeyToken=e379cdf2f8354999" %>
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
               { %>Cập nhật tin tuyển dụng<% }
               else
               {
                %>
                   Thêm mới tin tuyển dụng
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
                    Chọn nhóm tin</td>
                <td class="tblSkinValueColumn">
                    <asp:DropDownList runat="server" ID="drpNhomTin" Width="400px"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Tên tin</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtTenTin" Width="98%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Mô tả</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtdesc" Width="98%" TextMode="MultiLine"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Hình ảnh</td>
                <td class="tblSkinValueColumn">
                    <img src="<%= Images %>" alt="" style="float: left" width="200px"/>
                    <p style="float: right">
                        <asp:FileUpload runat="server" ID="upHinhanh"/>
                    </p>
                    
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Nội dung</td>
                <td class="tblSkinValueColumn">
                    <ck:CKEditorControl runat="server" BasePath="/Content/ckeditor" ID="Content" FilebrowserBrowseUrl="/Content/ckfinder/ckfinder.html"
                                        Height="400px" Width="99%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Hiển thị ngay?</td>
                <td class="tblSkinValueColumn">
                    <asp:CheckBox runat="server" ID="chkAction" Width="100%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Từ khóa</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtkeyword" Width="100%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Mô tả dành cho seo</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtMotaSeo" Width="98%" TextMode="MultiLine"/>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
