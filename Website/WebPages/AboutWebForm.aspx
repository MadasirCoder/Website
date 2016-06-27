<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutWebForm.aspx.cs" Inherits="Website.WebForm4" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\AboutStyleSheet.css">
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


<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div id="introduction">
            Hello, Thanks for visiting my website.
        </div>
        <h3>About me?</h3>
        <div id="who">
            I have received 2.1 in my degree in Computer Science from University of Strathclyde, July 2015.
              
        </div>
        <h3>About this site?</h3>
        <div id="about">
            I made this website as a personal project as a way to start building my skills on ASP.NET and web development. However, I am using this opportunity to add other projects I have worked on. I am currently unemployed and looking for a graduate opportunity in Scotland. Potential employers can view my projects and skills to determine if I am suitable for the position. Check out my
            <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#000066" href="Skills">Skill Page</asp:HyperLink>
            to see what technologies I have worked with.
        </div>
    </div>
</asp:Content>
