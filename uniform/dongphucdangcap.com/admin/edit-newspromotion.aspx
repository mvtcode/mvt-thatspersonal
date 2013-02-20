<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="edit-newspromotion.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_newspromotion" %>

<%@ Register TagPrefix="ck" Namespace="CKEditor.NET" Assembly="CKEditor.NET, Version=3.6.2.0, Culture=neutral, PublicKeyToken=e379cdf2f8354999" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Images {
            max-width: 200px;
            max-height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Cập nhật thông tin khuyến mại
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton ID="Link_Save" runat="server" onclick="Link_Save_Click">
                        <span class="toolbar-update-back"></span>
                        Lưu và thêm mới
                    </asp:LinkButton>
                    <asp:LinkButton ID="Link_SaveAndBack" runat="server" 
                        onclick="Link_SaveAndBack_Click">
                         <span class="toolbar-update-back"></span>
                        lưu và trở lại
                    </asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return false;">
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </asp:LinkButton>
                 </li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr>
                <td colspan="2" align="center" style="padding: 10px 0">
                    <asp:Label ID="LB_Messenger" runat="server" Text="Thêm mới tin khuyến mại"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tblSkinHeaderColumn" width="150px">
                    Tiêu đề
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Title" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Mô tả
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Description" runat="server" TextMode="MultiLine" Rows="6" Width="80%"
                        MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Tag
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_tag" runat="server" MaxLength="200" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Thứ tự
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Sort" runat="server" MaxLength="3"></asp:TextBox>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Ảnh
                </td>
                <td class="tblSkinValueColumn">
                    <div style="padding: 4px 0">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/no_pic.png" BorderStyle="None"
                            BorderWidth="0px" CssClass="Images" />
                    </div>
                    <asp:FileUpload ID="Upload_Images" runat="server" />
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Hiển thị
                </td>
                <td class="tblSkinValueColumn">
                    <asp:CheckBox ID="CB_Show" runat="server" Checked="True" />
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Nội dung
                </td>
                <td class="tblSkinValueColumn">
                    <ck:CKEditorControl runat="server" BasePath="../Content/ckeditor" ID="Editer_Content"
                        FilebrowserBrowseUrl="../Content/ckfinder/ckfinder.html" Height="300px" Width="100%"></ck:CKEditorControl>
                </td>
            </tr>
<%--            <tr class="tblSkinRow">
                <td colspan="2" align="center">
                    <asp:Button ID="BT_Save" runat="server" Text="Lưu" Width="65px" OnClick="BT_Save_Click" />
                    &nbsp;<asp:Button ID="BT_Back" runat="server" Text="Quay lại" Width="65px" OnClick="BT_Back_Click" />
                </td>
            </tr>--%>
        </tbody>
    </table>
    <div>
        <input type="hidden" runat="server" id="HD_ID" value="0" />
        <input type="hidden" runat="server" id="HD_Image" value="" />
    </div>
</asp:Content>
