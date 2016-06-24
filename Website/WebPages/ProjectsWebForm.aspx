<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectsWebForm.aspx.cs" Inherits="Website.WebForm3" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\ProjectsStyleSheet.css"/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div id="introduction">
            <p>This page contains pictures or links of the projects I have completed. Click on the images</p>
        </div>
        <div id="Monopoly">
            <h2>Monopoly Transaction Tool</h2>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/monopoly.PNG" href="Monopoly.aspx"></asp:HyperLink>
            </p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern</p>
        </div>

        <div id="Website">
            <h2>Website</h2>
            <p>
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/website.png" href="HomeWebForm.aspx"></asp:HyperLink>
            </p>
            <p>This website itself is a project!</p>
            <p>Technology Used: C#.NET with ASP.NET, HTML, CSS3</p>
        </div>

        <div id="Graphics">
            <h2>Graphic's Class Projects</h2>
            <p>
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Graphics.png" href="GraphicsWebForm.aspx"></asp:HyperLink>
            </p>
            <p>Second Year Assignment</p>
            <p>Technology Used: Java - Object Oriented, Graphics Library, Maths Skills</p>
        </div>

          <div id="final">
            <h2>Conway's Game of Life(Final Year Project)</h2>
            <p>
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/conways.png" href="GameofLife.aspx"></asp:HyperLink>
            </p>
            <p>Final Year Dissertation</p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern, Strategy Pattern, JUnit </p>
        </div>

    </div>
</asp:Content>
