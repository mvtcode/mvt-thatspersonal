<%@ Page Title="Thông tin giỏ hàng" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="cart.aspx.cs" Inherits="dongphucdangcap.com.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cart">
        <div class="page-title title-buttons">
            <h1>Giỏ hàng</h1>
        </div>
        <asp:Literal runat="server" ID="ltrAnnounce" EnableViewState="False"/>
         <% if (Cart != null && Cart.LstProduct.Count > 0){ %>
        <form runat="server" id="frmCart">
        <asp:Repeater runat="server" ID="rptCart" OnItemDataBound="BindingDTS" OnItemCommand="CommandEvent">
            <HeaderTemplate>
                <table id="shopping-cart-table" class="data-table cart-table">
                    <thead class="font-benton">
                        <tr class="first last">
                            <th colspan="2" rowspan="1">
                                <span class="nobr">Sản phẩm</span>
                            </th>
                            <th class="a-center" colspan="1">
                                <span class="nobr">Đơn giá</span>
                            </th>
                            <th rowspan="1" class="a-center">
                                Số lượng
                            </th>
                            <th class="a-center" colspan="1">
                                Thành tiền
                            </th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class='<%# Container.ItemIndex==0?"first":""  %> <%# Container.ItemIndex % 2 == 0 ? "ood" : "even"%> <%# Container.ItemIndex==RptCount()-1?"last":"" %>'>
                    <td>
                        <asp:HiddenField runat="server" ID="idkey" Value='<%# Eval("id") %>'/>
                        <a href='<%# Eval("Link") %>' title='<%# Eval("ProductName") %>' class="product-image">
                            <img src='<%# Eval("image") %>' width="100" height="100" alt='<%# Eval("altImage") %>' />
                        </a>
                    </td>
                    <td>
                        <h2 class="product-name"><a href='<%# Eval("Link") %>' title='<%# Eval("ProductName") %>'><%# Eval("ProductName") %></a></h2>
                    </td>
                    <td class="a-right">
                        <span class="cart-price"><span class="price"><%# String.Format("{0:N0}",Eval("price")) %> VNĐ</span> </span>
                    </td>
                    <td class="a-center">
                        <asp:TextBox runat="server" Text='<%# Eval("Quantity") %>' size="4" title='<%# Eval("Quantity") %>' CssClass="input-text qty" maxlength="12" ID="txtQuantity"/>
                    </td>
                    <td class="a-right">
                        <span class="cart-price"><span class="price"><%# String.Format("{0:N0}",Eval("TotalPrice")) %> VNĐ</span> </span>
                    </td>
                    <td class="a-center last">
                        <span class="remove-item">
                            <asp:LinkButton title="Remove item" class="btn-remove btn-remove2" runat="server" CommandName="Remove">Remove item</asp:LinkButton>
                        </span>
                        <span class="edit-item">
                            <asp:LinkButton title="Sửa" runat="server" CommandName="Update">Sửa</asp:LinkButton>
                        </span>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody> </table>
            </FooterTemplate>
        </asp:Repeater>
        <div class="update-shopping">
            <button type="button" title="Update Shopping Cart" class="button btn-update" runat="server" OnServerClick="UpdateCartRpt">
                <span><span>Cập nhật giỏ hàng</span></span></button></div>
        </form>
        <!--Tổng giá trị giỏ hàng-->
        <div class="cart-collaterals">
            <div class="col2-set">
                <div class="col-2">
                    <div class="totals">
                        <table id="shopping-cart-totals-table">
                            <colgroup>
                                <col>
                                <col width="1">
                            </colgroup>
                            <tfoot>
                                <tr>
                                    <td colspan="1" class="a-right font-benton" style="">
                                        <strong class="font-utransform">Tổng giá trị đơn hàng</strong>
                                    </td>
                                    <td class="a-right font-benton" style="">
                                        <strong class="font-utransform"><span class="price"><%= String.Format("{0:N0}",Sum) %> VNĐ</span></strong>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                        <%--<div class="discount21">
                            <form id="discount-coupon-form" action="" method="post">
                            <div class="discount">
                                <h2><a href="javascript:hideshow(document.getElementById('discount-form'))">Mã giảm giá</a></h2>
                                <div class="discount-form" id="discount-form" style="display: block;">
                                    <label for="coupon_code">
                                        Nhập mã giảm giá (nếu có)</label>
                                    <input type="hidden" name="remove" id="remove-coupone" value="0">
                                    <div class="input-box">
                                        <input class="input-text" id="coupon_code" name="coupon_code" value="">
                                    </div>
                                    <div class="buttons-set">
                                        <button type="button" title="Apply Coupon" class="button" value="Gửi mã">
                                            <span><span>Gửi mã</span></span></button>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>--%>
                        <ul class="checkout-types">
                            <button type="button" title="Tiếp tục mua hàng" class="button btn-continue" onclick="window.location='/';">
                                <span><span>Tiếp tục mua hàng</span></span></button>
                            <button type="button" title="Tiếp tục thanh toán" class="button btn-checkout" onclick="window.location='/thanh-toan.htm';">
                                <span><span>Tiếp tục thanh toán</span></span></button>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
