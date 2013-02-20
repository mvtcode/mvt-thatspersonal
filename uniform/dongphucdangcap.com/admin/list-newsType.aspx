<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-newsType.aspx.cs" Inherits="dongphucdangcap.com.admin.list_newsType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách loại tin
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
            Có <%=n %> loại tin
        </div>
    </div>
    <div>
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
                <asp:BoundField HeaderText="ID" DataField="id">
                    <ItemStyle HorizontalAlign="Center" Width="10%" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="Tên danh mục tin" DataNavigateUrlFormatString="edit-newsType.aspx?id={0}"
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
    </div>
</asp:Content>
