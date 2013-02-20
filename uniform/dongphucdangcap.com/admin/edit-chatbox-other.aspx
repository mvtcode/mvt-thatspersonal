<%@ Page Title="Admin panel - Phản hồi khách hàng" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="edit-chatbox-other.aspx.cs" Inherits="dongphucdangcap.com.admin.edit_chatbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Phản hồi khách hàng
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton runat="server" ID="btnRep" OnClick="BT_Save_Click">
                        <span class="toolbar-insert"></span>
                        Trả lời bình luận
                    </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="btnXoa" OnClick="BT_Back_Click">
                        <span class="toolbar-delete"></span>
                        Trở về
                    </asp:LinkButton>
                 </li>
            </ul>
        </div>
    </div>
    <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Trả lời
                </td>
                <td class="tblSkinValueColumn">
                    <asp:TextBox ID="TB_Comment" runat="server" Height="200px" TextMode="MultiLine" Width="100%" />
                </td>
            </tr>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Active
                </td>
                <td class="tblSkinValueColumn">
                    <asp:CheckBox ID="CB_Active" runat="server" Checked="True" />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
