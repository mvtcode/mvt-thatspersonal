<%@ Page Title="Quản lý danh sách đối tác" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-partner.aspx.cs" Inherits="dongphucdangcap.com.admin.list_partner" %>
<%@ Import Namespace="Helpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách đối tác
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <a href="edit-partner.aspx">
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
    <asp:GridView runat="server" CssClass="tblList" ID="grvPartner" DataKeyNames="id"
        AutoGenerateColumns="False" onrowediting="grvUser_RowEditing" 
        onrowdeleting="grvUser_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="Chọn">
                <HeaderTemplate><input type="checkbox"/></HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkGrid"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Tên đối tác" DataField="Name"/>
            <asp:BoundField HeaderText="Liên kết" DataField="Link"/>
            <asp:TemplateField HeaderText="Hình ảnh">
               <ItemTemplate>
                   <img src='<%# !Eval("Image").Equals("") ? (ImageHelper.Partner + "/" + Eval("Image")) : "/Images/no-img.jpg" %>' width="100px" />
               </ItemTemplate>
            </asp:TemplateField>
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
