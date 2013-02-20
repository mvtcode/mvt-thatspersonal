<%@ Page Title="Tạo tài khoản mới" Language="C#" MasterPageFile="~/DP.Master" AutoEventWireup="true"
    CodeBehind="DangKi.aspx.cs" Inherits="dongphucdangcap.com.DangKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account-create">
        <div class="page-title">
            <h1>Tạo tài khoản</h1>
        </div>
        <form action="#" method="post" id="form-validate">
        <div class="fieldset">
            <h2 class="legend">Thông tin người dùng</h2>
            <ul class="form-list">
                <li class="fields">
                    <div class="customer-name">
                        <div class="field name-firstname">
                            <label for="firstname" class="required">
                                <em>*</em>Họ đệm</label>
                            <div class="input-box">
                                <input type="text" id="firstname" name="firstname" value="" title="First Name" maxlength="50"
                                       class="input-text"/>
                            </div>
                        </div>
                        <div class="field name-lastname">
                            <label for="lastname" class="required">
                                <em>*</em>Tên</label>
                            <div class="input-box">
                                <input type="text" id="lastname" name="lastname" value="" title="Last Name" maxlength="50"
                                    class="input-text validate-alpha required-entry">
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <label for="email_address" class="required">
                        <em>*</em>Địa chỉ e-mail</label>
                    <div class="input-box">
                        <input type="text" name="email" id="email_address" value="" title="Email Address"
                               class="input-text validate-email required-entry" maxlength="70"/>
                    </div>
                </li>
                <li class="control">
                    <!-- <div class="input-box">
                        <input type="checkbox" name="is_subscribed" title="Sign Up for Newsletter" value="1" id="is_subscribed" class="checkbox" />
                    </div>
                    <label for="is_subscribed">Sign Up for Newsletter</label> -->
                </li>
            </ul>
        </div>
        <div class="fieldset">
            <h2 class="legend">Thông tin đăng nhập</h2>
            <ul class="form-list">
                <li class="fields">
                    <div class="field">
                        <label for="password" class="required">
                            <em>*</em>Password (>6 kí tự)</label>
                        <div class="input-box">
                            <input type="password" name="password" id="password" title="Password" class="input-text"
                                   maxlength="50"/>
                        </div>
                    </div>
                    <div class="field">
                        <label for="confirmation" class="required">
                            <em>*</em>Nhập lại password</label>
                        <div class="input-box">
                            <input type="password" name="confirmation" title="Confirm Password" id="confirmation"
                                   class="input-text required-entry validate-cpassword" maxlength="50"/>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="buttons-set">
            <p class="required">* Bắt buộc nhập</p>
            <p class="back-link">
                <a href="#" class="back-link" onclick="history.back(-1)">
                    <small>« </small>Quay lại
                </a></p>
            <button type="submit" title="Submit" class="button" id="registerbtn">
                <span><span>Đăng kí</span></span></button>
        </div>
        </form>
    </div>
    <script type="text/javascript">
        $("form").submit(function() {
            $(this).find(".validation-failed").removeClass("validation-failed");
            var str = "";
            if ($("#firstname").val().length == 0) {
                str += "+ Bạn chưa nhập họ tên \n";
                $("#firstname").addClass("validation-failed");
            }
            if ($("#lastname").val().length == 0) {
                str += "+ Bạn chưa nhập tên \n";
                $("#lastname").addClass("validation-failed");
            }
            if ($("#email_address").val().length == 0) {
                str += "+ Bạn chưa nhập địa chỉ email \n";
                $("#email_address").addClass("validation-failed");
            }

            var emailTest = /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$/;
            if (!emailTest.test($("#email_address").val())) {
                str += "+ Địa chỉ email không hợp lệ \n";
                $("#email_address").addClass("validation-failed");
            }

            if ($("#password").val().length == 0) {
                str += "+ Bạn chưa nhập password \n";
                $("#password").addClass("validation-failed");
            }
            if ($("#confirmation").val().length == 0) {
                str += "+ Bạn chưa nhập ô nhập lại password \n";
                $("#confirmation").addClass("validation-failed");
            }
            if ($("#password").val() != $("#confirmation").val()) {
                str += "+ Password không khớp";
                $("#password, #confirmation").addClass("validation-failed");
            }
            if (str.length > 0) {
                alert(str);
                return false;
            }
            
            //Xu ly ajax
            return true;
        });
    </script>
</asp:Content>