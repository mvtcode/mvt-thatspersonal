<%@ Page Title="Kiểm tra thông tin đơn hàng" Language="C#" MasterPageFile="~/admin/UniAdmin.Master"
    AutoEventWireup="true" CodeBehind="edit-order-product.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_order_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear">
        </div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Kiểm tra thông tin đơn hàng
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton runat="server" ID="Link_Save" OnClick="Link_Save_Click">
                         <span class="toolbar-update"></span>
                        Lưu
                    </asp:LinkButton>
                    <asp:LinkButton ID="Link_SaveAndBack" runat="server" 
                        onclick="Link_SaveAndBack_Click">
                         <span class="toolbar-update-back"></span>
                        lưu và trở lại
                    </asp:LinkButton>
                    <a><span class="toolbar-support"></span>Hướng dẫn </a></li>
            </ul>
        </div>
    </div>
    <div class="content_block" style="padding: 0px; border: solid 0px #ffffff;">
        <table border="0" style="width: 100%;">
            <tbody>
                <tr>
                    <td style="width: 50%; vertical-align: top;">
                        <table width="100%" cellspacing="2" cellpadding="5" class="tbl_order-detail">
                            <tbody>
                                <tr>
                                    <td align="left" nowrap="" colspan="2" class="td_order-detail-title">
                                        Thông tin người đặt hàng
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Họ và tên:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_FullnameOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Giới tính:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_SexOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Địa chỉ:
                                    </td>
                                    <td nowrap="nowrap">
                                        <asp:Label ID="LB_AddressOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Email:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_EmailOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Điện thoại:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_TellOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Di động:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_MobileOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Fax:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_FaxOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top" class="form_asterisk">
                                        Ghi chú:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_OtherInfoOrder" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td style="width: 50%; vertical-align: top;">
                        <table width="100%" cellspacing="2" cellpadding="5" class="tbl_order-detail">
                            <tbody>
                                <tr>
                                    <td align="left" nowrap="" colspan="2" class="td_order-detail-title">
                                        Thông tin người nhận hàng
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Họ và tên:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_FullnameReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Giới tính:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_SexReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Địa chỉ:
                                    </td>
                                    <td nowrap="nowrap">
                                        <asp:Label ID="LB_AddressReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Email:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_EmailReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Điện thoại:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_TellReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Di động:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_MobileReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Fax:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_FaxReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top" class="form_asterisk">
                                        Ghi chú:
                                    </td>
                                    <td>
                                        <asp:Label ID="LB_OtherInfoReceived" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 99%;">
            <tbody>
                <tr>
                    <td nowrap="nowrap" colspan="2" class="td_order-detail-title">
                        Vận chuyển và thanh toán
                    </td>
                </tr>
                <tr>
                    <td align="left" nowrap="" class="form_asterisk1">
                        Hình thức vận chuyển:
                    </td>
                    <td>
                        <asp:Label ID="LB_Shipping" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" nowrap="" class="form_asterisk1">
                        Thời gian giao hàng:
                    </td>
                    <td>
                        <asp:Label ID="LB_TransitTime" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" nowrap="" class="form_asterisk1">
                        Hình thức thanh toán:
                    </td>
                    <td>
                        <asp:Label ID="LB_Payment" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="100%" cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 99%;">
            <tbody>
                <tr>
                    <td nowrap="nowrap" class="td_order-detail-title">
                        DANH SÁCH SẢN PHẨM
                    </td>
                </tr>
                <tr>
                    <td nowrap="nowrap">
                        <div>
                            <asp:GridView runat="server" CssClass="tblList" ID="GV_Product" DataKeyNames="id"
                                AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="ProductId" HeaderText="Mã sản phẩm"></asp:BoundField>
                                    <asp:BoundField HeaderText="Tên sản phẩm" DataField="ProductName" />
                                    <asp:BoundField HeaderText="Giá" DataField="price" DataFormatString="{0:N0}" />
                                    <asp:BoundField DataField="Number" DataFormatString="{0:N0}" HeaderText="Số lượng" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 99%;">
            <tbody>
                <tr>
                    <td nowrap="nowrap" colspan="2" class="td_order-detail-title">
                        THÔNG TIN ĐƠN HÀNG
                    </td>
                </tr>
                <tr>
                    <td class="form_asterisk1">
                        Tổng đơn hàng:
                    </td>
                    <td>
                        <asp:Label ID="LB_ProductNumber" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="form_asterisk1">
                        Tổng Tiền:
                    </td>
                    <td>
                        <asp:Label ID="LB_TotalPayment" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="form_asterisk1">
                        Trạng thái đơn hàng:
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_StatusOrder" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <input type="hidden" runat="server" id="HD_ID" value="0" />
    </div>
</asp:Content>
