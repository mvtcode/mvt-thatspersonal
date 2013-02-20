<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-category-price.aspx.cs" Inherits="dongphucdangcap.com.admin.list_category_price" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách nhóm tin tức
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <a href="edit-category-price.aspx">
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
    <asp:GridView runat="server" CssClass="tblList" ID="grvUser" DataKeyNames="id"
        AutoGenerateColumns="False" onrowcommand="grvUser_RowCommand" 
         onrowdeleting="grvUser_RowDeleting" onrowediting="grvUser_RowEditing" >
        <Columns>
            <asp:TemplateField HeaderText="Chọn">
                <HeaderTemplate><input type="checkbox"/></HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkGrid"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Tên nhóm tin" DataField="name"/>
            <asp:BoundField HeaderText="Link nhóm" DataField="Link"/>
            <asp:TemplateField HeaderText="Sắp xếp">
                <ItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Eval("sort") %>' ID="txtSource"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thao tác">
               <ItemTemplate>
                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="/admin/images/action_delete.gif"
                        OnClientClick="javascript:{ return confirm('Bạn có muốn xóa không?');}" />
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("id") %>'
                        ImageUrl="/admin/images/edit.gif" />
                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Save" CommandArgument='<%# Eval("id") %>'
                        ImageUrl="/admin/images/save-16x16.png" />
               </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
