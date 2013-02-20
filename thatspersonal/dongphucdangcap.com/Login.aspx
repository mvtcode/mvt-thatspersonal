<%@ Page Title="" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="dongphucdangcap.com.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account-login">
        <div class="page-title">
            <h1>Đăng nhập hoặc tạo tài khoản</h1>
        </div>
        <form action="/" method="post" id="login-form">
        <div class="col2-set">
            <div class="col-1 new-users">
                <div class="content">
                    <h2>Đăng ký mới</h2>
                    <p>Tạo tài khoản trên website sẽ giúp bạn lưu lại danh sách sản phẩm đã mua, thanh toán nhanh hơn.</p>
                </div>
            </div>
            <div class="col-2 registered-users">
                <div class="content">
                    <h2>Đăng nhập</h2>
                    <p>Đã có tài khoản? Mời đăng nhập tại đây.</p>
                    <ul class="form-list">
                        <li>
                            <label for="email" class="required">
                                <em>*</em>Địa chỉ email</label>
                            <div class="input-box">
                                <input type="text" name="login[username]" value="" id="email" class="input-text required-entry validate-email"
                                       title="Email Address" maxlength="70" />
                            </div>
                        </li>
                        <li>
                            <label for="pass" class="required">
                                <em>*</em>Password</label>
                            <div class="input-box">
                                <input type="password" name="login[password]" class="input-text required-entry validate-password"
                                       id="pass" title="Password" maxlength="50" />
                            </div>
                        </li>
                    </ul>
                    <p class="required">*</p>
                </div>
            </div>
        </div>
        <div class="col2-set">
            <div class="col-1 new-users">
                <div class="buttons-set">
                    <button type="button" title="Đăng kí tài khoản mới" class="button" onclick="window.location='/dangki.aspx';">
                        <span><span>Tạo tài khoản</span></span></button>
                </div>
            </div>
            <div class="col-2">
                <div class="buttons-set">
                    <a href="/forgotpassword.aspx" class="f-left">
                        Quên mật khẩu?</a>
                    <button type="submit" class="button" title="Login" name="send" id="send2">
                        <span><span>Đăng nhập</span></span></button>
                </div>
            </div>
        </div>
        </form>
    </div>
    <script type="text/javascript">
        $("form#login-form").submit(function() {
            $(this).find(".validation-failed").removeClass("validation-failed");
            $(this).find(".validation-advice").remove();
            // var str = "";
            if ($("#email").val() == 0) {
                $("#email").addClass("validation-failed");
                $("#email").after("<div class=\"validation-advice\">Bạn chưa nhập email</div>").hide().fadeIn("slow");
                // str += "+ Bạn chưa nhập email \n";
            } else {
                var emailTest = /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$/;
                if (!emailTest.test($("#email").val())) {
                    // str += "+ Địa chỉ email không hợp lệ \n";
                    $("#email").after("<p class=\"validation-advice\">Email không hợp lệ</p>").fadeIn();
                    $("#email").addClass("validation-failed");
                }
            }
            if ($("#pass").val() == 0) {
                $("#pass").addClass("validation-failed");
                $("#pass").after("<p class=\"validation-advice\">Bạn chưa nhập password</p>").fadeIn();
                //str += "+ Bạn chưa nhập password \n";
            }
            //if (str.length > 0) alert(str);
            return false;
        });
        
    </script>
</asp:Content>
