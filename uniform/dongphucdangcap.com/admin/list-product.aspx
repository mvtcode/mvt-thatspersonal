<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="list-product.aspx.cs" Inherits="dongphucdangcap.com.admin.list_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        function SetImgHot(id) {
            $("#" + id).attr("src", "<%=sImgNoHot%>");
        }
        function SetImgNoHot(id) {
            $("#" + id).attr("src", "<%=sImgHot%>");
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Danh sách sản phẩm
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton ID="link_Update" runat="server" OnClick="BT_Update_Click">
                        <span class="toolbar-update"></span>
                        Cập nhật
                    </asp:LinkButton>
                    <asp:LinkButton ID="Link_Add" runat="server" OnClick="Link_Add_Click">
                        <span class="toolbar-insert"></span>
                        Thêm mới
                    </asp:LinkButton>
                    <a><span class="toolbar-support"></span>Hướng dẫn </a></li>
            </ul>
        </div>
    </div>
    <div class="div-search clearfix">
        <div style="float: left">
            Chọn danh mục
            <asp:DropDownList ID="DDL_ProductType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_ProductType_SelectedIndexChanged"
                Width="200px">
            </asp:DropDownList>
            &nbsp;có
            <%=n %>
            sản phẩm
        </div>
    </div>
    <asp:GridView ID="GV_Product" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
        PageSize="20" HeaderStyle-Font-Size="12px" RowStyle-Font-Size="12px" EnableTheming="False"
        EmptyDataText="Không tìm thấy bản ghi nào" CssClass="tblList" GridLines="Vertical"
        Width="100%" AllowPaging="True" OnPageIndexChanging="GV_Product_PageIndexChanging"
        OnRowDeleting="GV_Product_RowDeleting" OnRowEditing="GV_Product_RowEditing" OnRowCommand="GV_Product_RowCommand"
        OnRowDataBound="GV_Product_RowDataBound">
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
            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" />
                </ItemTemplate>
                <ItemStyle Width="10%" />
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="id" HeaderText="Tên sản phẩm" DataNavigateUrlFormatString="edit-product.aspx?id={0}"
                DataTextField="name">
                <ItemStyle Width="20%" />
            </asp:HyperLinkField>
            <asp:BoundField HeaderText="Mô tả" DataField="description">
                <ItemStyle Width="40%" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Giá">
                <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Hot">
                <ItemTemplate>
                    <asp:CheckBox ID="CB_Hot" runat="server" Checked='<%# Bind("isHot") %>' />
                </ItemTemplate>
                <ItemStyle Width="5%" />
            </asp:TemplateField>
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
