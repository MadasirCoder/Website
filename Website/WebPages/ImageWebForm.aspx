<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImageWebForm.aspx.cs" Inherits="Website.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-79954652-1', 'auto');
        ga('send', 'pageview');

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Button ID="Button2" Text="Back to images" runat="server" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Label ID="label1" runat="server" Text="label"></asp:Label>
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" Text="Back to images" runat="server" OnClick="Button1_Click" />
</asp:Content>
