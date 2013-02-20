<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
         CodeBehind="list-category-product.aspx.cs" Inherits="dongphucdangcap.com.admin.list_category_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách loại sản phẩm - Có: <%= n %> loại sản phẩm
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <a href="edit-category-product.aspx">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </a>
                    <asp:LinkButton runat="server" ID="btnXoa">
                        <span class="toolbar-delete"></span>
                        Xóa
                    </asp:LinkButton>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                </li>
            </ul>
        </div>
    </div>
 
    <asp:GridView ID="GV_Type" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
                  PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
                  EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
                  Width="100%" AllowPaging="True" OnPageIndexChanging="GV_Type_PageIndexChanging"
                  OnRowDeleting="GV_Type_RowDeleting" OnRowEditing="GV_Type_RowEditing">
        <PagerStyle HorizontalAlign="Right" VerticalAlign="Middle" />
        <HeaderStyle HorizontalAlign="Center" Font-Bold="True" />
        <RowStyle Font-Size="12px"></RowStyle>
        <Columns>
            <asp:TemplateField HeaderText="STT">
                <HeaderTemplate>
                    STT</HeaderTemplate>
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="10%" />
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="Tên loại sản phẩm" DataNavigateUrlFormatString="edit-category-product.aspx?id={0}"
                                DataTextField="name">
                <ItemStyle Width="70%" />
            </asp:HyperLinkField>
            <asp:TemplateField HeaderText="Thao tác">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                           Font-Underline="False" HorizontalAlign="Center" Width="10%" />
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="/admin/images/action_delete.gif"
                                     OnClientClick="javascript:{ return confirm('Bạn có muốn xóa không?');}" />
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("id") %>'
                                     ImageUrl="/admin/images/edit.gif" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>