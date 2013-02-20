<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-imageAlbum.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_imageAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Cập nhật thông tin ảnh Album
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton ID="Link_Save" runat="server" onclick="Link_Save_Click">
                        <span class="toolbar-update-insert"></span>
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
                    <asp:Label ID="LB_Messenger" runat="server" Text="Thêm mới ảnh vào Album"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tblSkinHeaderColumn" width="150px">
                    Tên Album
                </td>
                <td class="tblSkinValueColumn">
                    <asp:DropDownList ID="DDL_Album" runat="server" Width="300px">
                    </asp:DropDownList>
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
                    Alt image
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Alt" runat="server" MaxLength="200" Width="300px"></asp:TextBox>
                </td>
            </tr>
        </tbody>
    </table>
    <div>
        <input type="hidden" runat="server" id="HD_ID" value="0" />
        <input type="hidden" runat="server" id="HD_AlbumID" value="0" />
        <input type="hidden" runat="server" id="HD_Image" value="" />
    </div>
</asp:Content>
