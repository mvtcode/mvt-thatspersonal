<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-productColor.aspx.cs" Inherits="dongphucdangcap.com.admin.list_productColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div-search clearfix">
        <div style="float: left">
            Chọn danh mục sản phẩm
            <asp:DropDownList ID="DDL_Type" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DDL_Type_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="DDL_Product" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DDL_Product_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div style="float: right">
            <asp:Button ID="BT_Add" runat="server" Text="Thêm" OnClick="BT_Add_Click" />
            <%--<input type="text" class="inputSearch" />
            <input type="button" class="buttonSearch" />--%>
        </div>
    </div>
    <asp:GridView ID="GV_ImagesColor" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_ImagesColor_PageIndexChanging"
        OnRowDeleting="GV_ImagesColor_RowDeleting" 
        OnRowEditing="GV_ImagesColor_RowEditing">
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
            <asp:ImageField DataImageUrlField="image" HeaderText="Hình ảnh">
                <ItemStyle Width="20%" />
            </asp:ImageField>
            <asp:TemplateField HeaderText="Màu">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("colorValue") %>' BackColor='<%# Bind("colorValue") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("colorValue") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="10%" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="Atl Image" DataField="altImage">
                <ItemStyle Width="50%" />
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
