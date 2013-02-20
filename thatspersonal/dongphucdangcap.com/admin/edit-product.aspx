<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="edit-product.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Images {
            max-width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainwrap" class="clearfix">
        <div id="mainwrapinner">
            <div class="toolbar clearfix">
                <div class="toolbar-title">
                    Thêm mới sản phẩm</div>
                <div class="toolbar-action">
                    <ul>
                        <li>
                            <asp:LinkButton ID="Link_Save" runat="server" OnClick="Link_Save_Click"><span class="toolbar-update-insert"></span>Lưu và thêm mới</asp:LinkButton>
                            <asp:LinkButton ID="Link_SaveAndBack" runat="server" 
                                onclick="Link_SaveAndBack_Click"><span class="toolbar-update-back"></span>lưu và trở lại</asp:LinkButton>
                            <a onclick="return false;" id="LinkButton2" href="#"><span class="toolbar-support"></span>
                                Hướng dẫn </a></li>
                    </ul>
                </div>
            </div>
            <table width="100%" class="tblDetailSkin">
                <tbody>
                    <tr>
                        <td class="tblSkinHeaderColumn" width="150px">
                            Loại sản phẩm
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:DropDownList ID="DDL_ProductType" runat="server" Width="300px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="tblSkinHeaderColumn" width="150px">
                            Tên sản phẩm
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Name" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Mô tả
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Description" runat="server" Rows="3" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Nội dung
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Content" runat="server" Rows="5" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Tag
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Tag" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Ảnh
                        </td>
                        <td class="tblSkinValueColumn">
                            <div style="padding: 4px 0">
                                <asp:Image ID="Image1" runat="server" CssClass="Images" Style="border-width: 0px;
                                    border-style: None;" ImageUrl="/Images/no_pic.png" />
                            </div>
                            <asp:FileUpload ID="Upload_Images" runat="server" Width="300px" />
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
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Giá
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Price" runat="server" MaxLength="200" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Size
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:TextBox ID="TB_Size" runat="server" MaxLength="200" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <%--<tr class="tblSkinRow">
                        <td class="tblSkinHeaderColumn">
                            Sản phẩm hot
                        </td>
                        <td class="tblSkinValueColumn">
                            <asp:CheckBox ID="CB_Hot" runat="server" />
                        </td>
                    </tr>--%>
                </tbody>
            </table>
            <div>
                <input name="HD_ID" runat="server" type="hidden" id="HD_ID" value="0"/>
                <input name="HD_TypeID" runat="server" type="hidden" id="HD_TypeID" value="0"/>
                <input name="HD_Image" runat="server" type="hidden" id="HD_Image"/>
            </div>
        </div>
    </div>
</asp:Content>
