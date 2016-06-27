<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomeWebForm.aspx.cs" Inherits="Website.WebForm1" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
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
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\SkillsStyleSheet.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/PeriodicTable.jpg" ImageAlign="Middle" horizontalAlign="Middle" Height="600px" Width="900px" />

</asp:Content>
