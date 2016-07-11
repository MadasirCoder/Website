<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FootballTable.aspx.cs" Inherits="Website.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link rel="stylesheet" type="text/css" href="..\StyleSheets\FootballTableStyleSheet.css" />
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
    <div id="cont">
        <div class="large">Description</div>
          <div class="introduction">
            This is my first project working with Microsoft SQL servers on ASP.NET. 
              <br />
              Anti SQL injection steps have been included using store procedures with parameters.
        </div>
        <br />

        <div class="large">Features</div>
        <ul>
            <li>Enter game results.</li>
            <li>Recent match feedback.</li>
            <li>Add new teams to table.</li>
            <li>Delete teams from table.</li>
            <li>Reset table.</li>
            <li>System errors are handled using javascript.</li>
            <li>More Features to come...</li>
        </ul>
        <br />
        <br />
        <div class="Skills">
            <div class="large">Skills Used</div>
            Technology Used: C# ASP.NET - Object Oriented, Microsoft SQL Server 2014, Gridview
        </div>
        <br />
        <br />

         <div class="large">Project Link</div>
         <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#000066" href="FootballTableProject">Click here</asp:HyperLink>
        </div>
</asp:Content>
