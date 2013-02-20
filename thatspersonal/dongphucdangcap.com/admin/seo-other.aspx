<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="seo-other.aspx.cs" Inherits="dongphucdangcap.com.admin.seo_other" validateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navi-action">
        <div class="clear"></div>
    </div>
    <div class="toolbar clearfix">
        <div class="toolbar-title">
            Cập nhật thông tin đề mục seo
        </div>
        <div class="toolbar-action">
            <ul>
                <li>
                    <asp:LinkButton runat="server" ID="btnAc" onclick="btnAc_Click">
                        <span class="toolbar-update"></span>
                        Lưu
                    </asp:LinkButton>
                    <a>
                        <span class="toolbar-support"></span>
                        Hướng dẫn
                    </a>
                 </li>
            </ul>
        </div>
    </div>
        <table width="100%" class="tblDetailSkin">
        <tbody>
            <tr class="tblSkinRow">
                <td class="tblSkinHeaderColumn">
                    Nội dung    
                </td>
                <td class="tblSkinValueColumn">
                 <asp:TextBox ID="txtContent" Height="400px" Width="99%" runat="server" TextMode="MultiLine"/>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
