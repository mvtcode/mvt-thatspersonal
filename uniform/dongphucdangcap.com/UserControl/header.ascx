<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="dongphucdangcap.com.UserControl.header" %>
<div id="header" class="clearfix">
    <h1><a href="/" title="Đồng phục chất lượng, đồng phục teen"><img src="/Content/images/logo.png"/></a></h1>
    <div id="support-info">
        <%=YahooSupport%>
        <div class="clear"></div>
        <span style="font-style: italic;padding-top: 6px;display: block">Hỗ trợ trực tuyến</span>
    </div>
</div>
<div id="navigate" class="clearfix">
    <ul>
        <%= MenuString %>
    </ul>
  <div class="clear"></div>
</div>
