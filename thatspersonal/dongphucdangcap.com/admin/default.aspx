<%@ Page Title="" Language="C#" MasterPageFile="~/admin/UniAdmin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="dongphucdangcap.com.admin._default" %>
<%@Register tagPrefix="usc" tagName="sideLeft" src="~/UserControl/admin_option_left.ascx" %>
<%@Register tagPrefix="usc" tagName="sideRight" src="~/UserControl/admin_option_right.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="innerDefault clearfix">
       <usc:sideLeft runat="server" />
       <usc:sideRight runat="server" />
       <div class="clear"></div>
   </div>
</asp:Content>
