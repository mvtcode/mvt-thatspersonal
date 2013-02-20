<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-customer.aspx.cs" Inherits="dongphucdangcap.com.admin.list_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách người dùng
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <%--<a href="edit-user.aspx">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </a>--%>
                    <%--<asp:LinkButton runat="server" ID="btnXoa">
                        <span class="toolbar-delete"></span>
                        Xóa
                    </asp:LinkButton>--%>
                    <%--<asp:LinkButton ID="Link_Update" runat="server" onclick="Link_Update_Click"> <span class="toolbar-update"></span>Cập nhật </asp:LinkButton>--%>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                 </li>
            </ul>
        </div>
    </div>
    <asp:GridView runat="server" CssClass="tblList" ID="grvUser" DataKeyNames="id"
        AutoGenerateColumns="False" onrowediting="grvUser_RowEditing" 
        onrowdeleting="grvUser_RowDeleting" AllowPaging="True" 
        onpageindexchanging="grvUser_PageIndexChanging" PageSize="20">
        <Columns>
            <%--<asp:TemplateField HeaderText="Chọn">
                <HeaderTemplate><input type="checkbox"/></HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkGrid"/>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:BoundField HeaderText="Email" DataField="Email"/>
            <asp:BoundField HeaderText="Họ" DataField="FirstName"/>
            <asp:BoundField DataField="Lastname" HeaderText="Tên" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Địa chỉ" />
            <%--<asp:TemplateField HeaderText="Active">
               <ItemTemplate>
                   <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Active") %>' 
                       Enabled="True" />
               </ItemTemplate>
            </asp:TemplateField>--%>
             <asp:TemplateField HeaderText="Thao tác">
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