<%@ Page Title="Admin panel - Danh sách phản hồi khách hàng" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="list-chatbox-other.aspx.cs" Inherits="dongphucdangcap.com.admin.list_chatbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách phản hồi
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton runat="server" OnClick="BT_Update_Click">
                        <span class="toolbar-update"></span>
                        Cập nhật
                    </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="btnXoa" OnClick="BT_Add_Click">
                        <span class="toolbar-insert"></span>
                        Trả lời phản hồi
                    </asp:LinkButton>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                 </li>
            </ul>
        </div>
    </div>
    <asp:GridView ID="GV_Chat" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_Chat_PageIndexChanging"
        OnRowDeleting="GV_Chat_RowDeleting">
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
                <ItemStyle HorizontalAlign="Center" Width="5%" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="Tên người dùng" DataField="name">
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:BoundField DataField="comment" HeaderText="Nội dung">
                <ItemStyle Width="55%" />
            </asp:BoundField>
            <asp:BoundField DataField="CreateDate" 
                DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" HeaderText="Thời gian">
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="isAdmin" HeaderText="Admin">
            <ItemStyle Width="5%" />
            </asp:CheckBoxField>
            <asp:TemplateField HeaderText="Cho phép hiện?">
                <ItemTemplate>
                    <asp:CheckBox ID="CB_Active" runat="server" Checked='<%# Bind("active") %>' />
                </ItemTemplate>
                <ItemStyle Width="5%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thao tác">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" HorizontalAlign="Center" Width="5%" />
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
