<%@ Page Title="Khôi phục mật khẩu" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="forgotpass.aspx.cs" Inherits="dongphucdangcap.com.forgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-title">
        <h1>Khôi phục mật khẩu</h1>
    </div>
    <form action="#" method="post" id="form-validate">
    <div class="fieldset">
        <h2 class="legend">Bạn quên mật khẩu, hãy khôi phục lại mật khẩu tại đây</h2>
        <p>Sau khi nhập email tại đây bạn sẽ nhận được mật khẩu mới qua email.</p>
        <ul class="form-list">
            <li>
                <label for="email_address" class="required">
                    <em>*</em>Địa chỉ email</label>
                <div class="input-box">
                    <input type="text" name="email" alt="email" id="email_address" class="input-text"
                        value="" />
                </div>
            </li>
        </ul>
    </div>
    <div class="buttons-set">
        <p class="required">* Các ô bắt buộc nhập</p>
        <p class="back-link">
            <a href="/login.aspx"><small>« </small>Quay lại trang đăng nhập</a></p>
        <button type="submit" title="Submit" class="button validation-passed">
            <span><span>Gửi</span></span>
        </button>
    </div>
    </form>
</asp:Content>
