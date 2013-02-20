<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="UserPromotion.aspx.cs" Inherits="dongphucdangcap.com.admin.UserPromotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách thành viên nhận tin mới
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <%--<asp:LinkButton ID="Link_Add" runat="server" OnClick="Link_Add_Click">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </asp:LinkButton>--%>
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
            Có <%=n %> thành viên
        </div>
    </div>
    <asp:GridView ID="GV_UserPromotion" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_UserPromotion_PageIndexChanging"
        OnRowDeleting="GV_UserPromotion_RowDeleting">
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
            <asp:BoundField HeaderText="Họ tên" DataField="fullname">
                <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="mobile" HeaderText="Điện thoại">
                <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email">
            <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:BoundField DataField="className" HeaderText="Tên lớp">
            <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Địa chỉ">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="CreateDate" 
                DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" HeaderText="Thời gian">
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Thao tác">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" HorizontalAlign="Center" Width="10%" />
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="/admin/images/action_delete.gif"
                        OnClientClick="javascript:{ return confirm('Bạn có muốn xóa không?');}" />
                    <%--<asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("id") %>'
                        ImageUrl="/admin/images/edit.gif" />--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
