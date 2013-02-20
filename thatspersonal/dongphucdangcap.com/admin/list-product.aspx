<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="list-product.aspx.cs" Inherits="dongphucdangcap.com.admin.list_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách sản phẩm
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <%--<asp:LinkButton ID="Link_Update" runat="server" onclick="Link_Update_Click">
                        <span class="toolbar-update"></span>
                        Cập nhật
                    </asp:LinkButton>--%>
                    <%--<asp:LinkButton ID="Link_Delete" runat="server" onclick="Link_Delete_Click">
                        <span class="toolbar-delete"></span>
                        Xóa
                    </asp:LinkButton>--%>
                    <asp:HyperLink ID="Link_Add" runat="server" NavigateUrl="edit-product.aspx"  >
                         <span class="toolbar-insert"></span>
                        Thêm mới
                    </asp:HyperLink>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                 </li>
            </ul>
        </div>
    </div>
    <div class="div-search clearfix">
        <div style="float: left">
            Chọn danh mục &nbsp; <asp:DropDownList ID="DDL_ProductType" runat="server" 
                AutoPostBack="True" 
                onselectedindexchanged="DDL_ProductType_SelectedIndexChanged"/>
             &nbsp;có <asp:Label ID="LB_Count" runat="server" Text="0"></asp:Label> sản phẩm
        </div>
    </div>
    <asp:GridView runat="server" CssClass="tblList" ID="GV_Product" DataKeyNames="Id"
        AutoGenerateColumns="False" onrowediting="GV_Product_RowEditing" 
        onrowdeleting="GV_Product_RowDeleting" 
        onpageindexchanging="GV_Product_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Chọn">
                <HeaderTemplate><input type="checkbox"/></HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkGrid"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("image", "/Images/Product/{0}") %>' Width="100%"/>
                </ItemTemplate>
                <ItemStyle Width="10%" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="name"/>
            <asp:BoundField HeaderText="Mô tả" DataField="description"/>
            <asp:BoundField DataField="price" DataFormatString="{0:N0}" HeaderText="Giá" />
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
