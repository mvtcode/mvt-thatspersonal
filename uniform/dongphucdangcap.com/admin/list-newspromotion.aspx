<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-newspromotion.aspx.cs" Inherits="dongphucdangcap.com.admin.list_newspromotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách tin khuyến mại
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
            Có <%=n %> tin
        </div>
    </div>
    <asp:GridView ID="GV_NewsPromotion" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_NewsPromotion_PageIndexChanging"
        OnRowDeleting="GV_NewsPromotion_RowDeleting" 
        onrowediting="GV_NewsPromotion_RowEditing" 
        onrowcommand="GV_NewsPromotion_RowCommand">
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
            <asp:BoundField HeaderText="Tiêu đề" DataField="title">
                <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Mô tả">
                <ItemStyle Width="35%" />
            </asp:BoundField>
            <asp:BoundField DataField="CreateDate" HeaderText="Ngày tạo" 
                DataFormatString="{0:dd/MM/yyyy HH:mm:ss}">
            <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:BoundField DataField="sort" HeaderText="Thứ tự">
            <ItemStyle Width="5%" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="action" HeaderText="Action">
            <ItemStyle Width="5%" />
            </asp:CheckBoxField>
            <asp:TemplateField ShowHeader="False" HeaderText="Send email">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageBT_Send" runat="server" CausesValidation="false" CommandArgument='<%# Eval("id") %>'
                        ImageUrl="/admin/images/SendEmail.png" CommandName="Send" Text="Send" OnClientClick="javascript:{ return confirm('Bạn có muốn gửi tin này \ncho người nhận tin không?');}" ></asp:ImageButton>
                </ItemTemplate>
                <ItemStyle Width="5%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thao tác">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" HorizontalAlign="Center" Width="10%" />
                <ItemTemplate>
                    <asp:ImageButton ID="ImageBT_Delete" runat="server" CommandName="Delete" ImageUrl="/admin/images/action_delete.gif"
                        OnClientClick="javascript:{ return confirm('Bạn có muốn xóa không?');}" />
                    <asp:ImageButton ID="ImageBT_Edit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("id") %>'
                        ImageUrl="/admin/images/edit.gif" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
