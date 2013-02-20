<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-album.aspx.cs" Inherits="dongphucdangcap.com.admin.list_album" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách Album
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton ID="Link_Add" runat="server" onclick="Link_Add_Click">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </asp:LinkButton>
                    <%--<asp:LinkButton ID="Link_SaveAndBack" runat="server" 
                        onclick="Link_SaveAndBack_Click">
                         <span class="toolbar-update-back"></span>
                        lưu và trở lại
                    </asp:LinkButton>--%>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return false;">
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </asp:LinkButton>
                 </li>
            </ul>
        </div>
    </div>
    <%--<div class="div-search clearfix">
        <div style="float: left">
            Có <%=n %> Album</div>
        <div style="float: right">
            <asp:Button ID="BT_Add" runat="server" Text="Thêm" OnClick="BT_Add_Click" />
        </div>
    </div>--%>
    <div>
        <asp:GridView ID="GV_Album" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
            PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
            EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
            Width="100%" AllowPaging="True" OnPageIndexChanging="GV_Album_PageIndexChanging"
            OnRowDeleting="GV_Album_RowDeleting" OnRowEditing="GV_Album_RowEditing" 
            onrowdatabound="GV_Album_RowDataBound">
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
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" />
                    </ItemTemplate>
                    <ItemStyle Width="10%" />
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="Tên Album" DataNavigateUrlFormatString="edit-album.aspx?id={0}"
                    DataTextField="title">
                    <ItemStyle Width="10%" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="description" HeaderText="Mô tả">
                <ItemStyle Width="30%" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Ngày tạo" DataField="CreateDate" 
                    DataFormatString="{0:dd/MM/yyyy HH:mm}">
                    <ItemStyle Width="10%" />
                </asp:BoundField>
                <asp:BoundField DataField="sort" HeaderText="Thứ tự">
                <ItemStyle Width="10%" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="action" HeaderText="Action">
                <ItemStyle Width="10%" />
                </asp:CheckBoxField>
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
    </div>
</asp:Content>
