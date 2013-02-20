<%@ Page Title="Cập nhật đối tác" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-partner.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_partner" %>
<%@ Import Namespace="Helpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function validate() {
            if($("#<%=txtPartner.ClientID %>").val().length==0) {
                alert("Bạn chưa nhập tên khách hàng");
                return false;
            }
            if ($("#<%=txtLinks.ClientID %>").val().length == 0) {
                alert("Bạn chưa nhập đường liên kết");
                return false;
            }
            if ($("#<%=txtDescription.ClientID %>").val().length == 0) {
                alert("Bạn chưa nhập đoạn mô tả");
                return false;
            }

            if ($("#<%=ImageFile.ClientID %>").val() == "") {
                alert("Bạn chưa nhập file");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="navi-action">
        <asp:Literal runat="server" EnableViewState="False" ID="ltrThongbao" />
        <div class="clear">
        </div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
          Cập nhật thông tin khách hàng</div>
        <div class="toolbar-action">
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" onclick="Unnamed1_Click" OnClientClick="return validate();"><span class="toolbar-update-back"></span>Lưu và quay lại</asp:LinkButton>
                  </li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Tên khách hàng</td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtPartner" Width="90%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Địa chỉ liên kết
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtLinks" Width="90%"/>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Hình ảnh
                </td>
                <td class="tblSkinValueColumn">
                    <asp:FileUpload runat="server" ID="ImageFile"  Width="130px"/><br/>
                     <% if (Id > 0){ %>
                            <img src="<%= !string.IsNullOrEmpty(Info.Image) ? (ImageHelper.Partner + "/" + Info.Image) : "/Images/no-img.jpg" %>" alt="<%=Info.Alt %>" width="300px"/>
                     <% }%>
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    SEO cho ảnh
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtAlt" Width="97%" />
                 </td>
            </tr>
             <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Mô tả của khách hàng
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox runat="server" ID="txtDescription" Width="97%" TextMode="MultiLine" Rows="4"/>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
