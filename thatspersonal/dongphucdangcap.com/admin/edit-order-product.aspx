<%@ Page Title="Kiểm tra thông tin đơn hàng" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true"
    CodeBehind="edit-order-product.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_order_product" %>

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
                    <asp:LinkButton runat="server" ID="btnAc" OnClick="btnAc_Click">
                        <span class="toolbar-update"></span>
                        Lưu
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
                                        <span id="ctl05_lblFullnameOrder">Cao Minh Tùy</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Giới tính:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblSexOrder">Nam</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Địa chỉ:
                                    </td>
                                    <td nowrap="nowrap">
                                        <span id="ctl05_lblAddressOrder">Xóm lẻ - Triều khúc - Tân triều - Thanh trì - Hà nội</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Email:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblEmailOrder">caominhtuy@gmail.com</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Điện thoại:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblTellOrder">0333773751</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Di động:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblMobileOrder">0979337990</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Fax:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblFaxOrder">0333773751</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top" class="form_asterisk">
                                        Ghi chú:
                                    </td>
                                    <td>
                                        fsdfs
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
                                        <span id="ctl05_lblFullnameReceived">Cao Minh Tùy</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Giới tính:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblSexReceived">Nam</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Địa chỉ:
                                    </td>
                                    <td nowrap="nowrap">
                                        <span id="ctl05_lblAddressReceived">Xóm lẻ - Triều khúc - Tân triều - Thanh trì - Hà
                                            nội</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Email:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblEmailReceived">caominhtuy@gmail.com</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Điện thoại:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblTellReceived">0333773751</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Di động:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblMobileReceived">0979337990</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" nowrap="" class="form_asterisk">
                                        Fax:
                                    </td>
                                    <td>
                                        <span id="ctl05_lblFaxReceived">0333773751</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top" class="form_asterisk">
                                        Ghi chú:
                                    </td>
                                    <td>
                                        fsdfs
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
        <table cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 96%;">
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
                        Đến địa chỉ người nhận
                    </td>
                </tr>
                <tr>
                    <td align="left" nowrap="" class="form_asterisk1">
                        Thời gian giao hàng:
                    </td>
                    <td>
                        17/4/2012
                    </td>
                </tr>
                <tr>
                    <td align="left" nowrap="" class="form_asterisk1">
                        Hình thức thanh toán:
                    </td>
                    <td>
                        Tiền mặt
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="100%" cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 96%;">
            <tbody>
                <tr>
                    <td nowrap="nowrap" class="td_order-detail-title">
                        DANH SÁCH SẢN PHẨM
                    </td>
                </tr>
                <tr>
                    <td nowrap="nowrap">
                        <div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="2" cellpadding="5" class="tbl_order-detail" style="width: 96%;">
            <tbody>
                <tr>
                    <td nowrap="nowrap" colspan="2" class="td_order-detail-title">
                        THÔNG TIN ĐƠN HÀNG
                    </td>
                </tr>
                <tr>
                    <td class="form_asterisk1">
                        Số lượng sản phẩm:
                    </td>
                    <td>
                        <span id="ctl05_lblNumber">1</span>
                    </td>
                </tr>
                <tr>
                    <td class="form_asterisk1">
                        Tổng đơn hàng:
                    </td>
                    <td>
                        <span id="ctl05_lblTotal">2.400.000 VNĐ</span>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
