<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectsWebForm.aspx.cs" Inherits="Website.WebForm3" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\ProjectsStyleSheet.css" />
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
            <p>This page contains pictures or links of the projects I have done. Click on the images to get more information about the project.</p>
        </div>
        <div id="Monopoly">
            <h2>Monopoly Transaction Tool</h2>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/monopoly.PNG" href="Monopoly"></asp:HyperLink>
            </p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern</p>
        </div>

        <div id="Website">
            <h2>Website</h2>
            <p>
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/website.png" href="Home"></asp:HyperLink>
            </p>
            <p>This website itself is a project!</p>
            <p>Technology Used: C#.NET with ASP.NET, HTML, CSS3</p>
        </div>

        <div id="Graphics">
            <h2>Graphic's Class Projects</h2>
            <p>
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Graphics.png" href="Graphics"></asp:HyperLink>
            </p>
            <p>Second Year Assignment</p>
            <p>Technology Used: Java - Object Oriented, Graphics Library, Maths Skills</p>
        </div>

        <div id="final">
            <h2>Conway's Game of Life(Final Year Project)</h2>
            <p>
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/conways.png" href="GameofLife"></asp:HyperLink>
            </p>
            <p>Final Year Dissertation</p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern, Strategy Pattern, JUnit, Validation Testing </p>
        </div>

        <div id="race">
            <h2>3D Race World</h2>
            <p>
                <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Images/Race.PNG" href="3DRaceWorld"></asp:HyperLink>
            </p>
            <p>3rd Year Graphics Class Group Project</p>
            <p>Technology Used: Java - Object Oriented, LWJGL, 3D Graphics, Teamwork</p>
        </div>

        <div id="gizmo">
            <h2>Gizmoball</h2>
            <p>
                <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/Images/Gizmoball.PNG" href="Gizmoball"></asp:HyperLink>
            </p>
            <p>3rd Year Group Project</p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern, JUnit, Validation Testing, Teamwork</p>
        </div>

    </div>
</asp:Content>
