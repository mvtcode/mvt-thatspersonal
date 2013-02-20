<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="list-imageAlbum.aspx.cs" Inherits="dongphucdangcap.com.admin.list_imageAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách ảnh trong album
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton ID="Link_Add" runat="server" OnClick="Link_Add_Click">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return false;">
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </asp:LinkButton>
                </li>
            </ul>
        </div>
    </div>
    <div class="div-search clearfix">
        <div style="float: left">
            Chọn danh mục
            <asp:DropDownList ID="DDL_Album" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            &nbsp;có
            <%=n %>
            ảnh
        </div>
    </div>
    <asp:GridView ID="GV_Images" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_Images_PageIndexChanging"
        OnRowDeleting="GV_Images_RowDeleting" OnRowEditing="GV_Images_RowEditing" 
        onrowdatabound="GV_Images_RowDataBound">
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
            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("images") %>' Width="100%" />
                </ItemTemplate>
                <ItemStyle Width="20%" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="Atl Image" DataField="altImage">
                <ItemStyle Width="60%" />
            </asp:BoundField>
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
