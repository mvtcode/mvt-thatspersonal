<%@ Page Title="" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="cart.aspx.cs" Inherits="dongphucdangcap.com.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cart">
        <div class="page-title title-buttons">
            <h1>Giỏ hàng</h1>
        </div>
      <%--  <ul class="messages">
            <li class="error-msg">
                <ul><li><span>The requested quantity for "Wild Strappy Stretch Knit Chemise" is not available.</span></li></ul>
            </li>
        </ul>--%>
        <form action="#" method="post">
        <fieldset>
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
                    <tr class="first last odd">
                        <td>
                            <a href="#" title="#" class="product-image">
                                <img src="http://www.thatspersonal.com/media/catalog/product/cache/1/small_image/100x/9df78eab33525d08d6e5fb8d27136e95/I/S/ISOHWL00330.jpg" width="100" height="100" alt="Wild Strappy Stretch Knit Chemise" />
                            </a>
                        </td>
                        <td>
                            <h2 class="product-name">
                                <a href="#">Wild Strappy Stretch Knit Chemise</a>
                            </h2>
                        </td>
                        <td class="a-right">
                            <span class="cart-price"><span class="price">332.545 VNĐ</span> </span>
                        </td>
                        <td class="a-center">
                            <input name="cart[2590][qty]" value="2" size="4" title="Qty" class="input-text qty"
                                maxlength="12">
                        </td>
                        <td class="a-right">
                            <span class="cart-price"><span class="price">722.090</span> </span>
                        </td>
                        <td class="a-center last">
                            <span class="remove-item"><a href="#" title="Remove item" class="btn-remove btn-remove2">Remove item</a></span> <span class="edit-item">
                                    <a href="#" title="Edit item parameters">
                                        Sửa</a></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <div class="update-shopping">
            <button type="submit" title="Update Shopping Cart" class="button btn-update">
                <span><span>Cập nhật giỏ hàng</span></span></button></div>
        </form>
        
        <div class="cart-collaterals">
            <div class="col2-set">
                <div class="col-2">
                    <div class="totals">
                        <table id="shopping-cart-totals-table">
                            <tfoot>
                                <tr>
                                    <td colspan="1" class="a-right font-benton" style="">
                                        <strong class="font-utransform">Grand Total</strong>
                                    </td>
                                    <td class="a-right font-benton" style="">
                                        <strong class="font-utransform"><span class="price">7.090 VNĐ</span></strong>
                                    </td>
                                </tr>
                            </tfoot>
                            <tbody>
                                <tr>
                                    <td colspan="1" class="a-right font-utransform font-benton-lighter" style="">
                                        Tổng
                                    </td>
                                    <td class="a-right font-utransform font-benton-lighter" style="">
                                        <span class="price">7.090 VNĐ</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
