<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gizmoball.aspx.cs" Inherits="Website.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\GizmoBallStyleSheet.css" />
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
            In university I built a project called Gizmoball with 4 other students. Gizmoball is a pinball game except user can add/edit bumpers inside the game.
            <br />
            <br />
            This project was my first project working with Observer and the MVC patterns. These patterns became useful in future projects including in my dissertation.             
        </div>

        <div class="large">Features</div>
        <ul>
            <li>Two modes:build mode, where user can edit the board and run mode, where user can run and stop the game.</li>
            <li>Adding/deleting shape on board.</li>
            <li>Connect two shape - uf one shape is hit by the ball, the shap connecting to it will change colour.</li>
            <li>Save/Load - save a board as a file and load it back later.</li>
        </ul>

        <div class="Skills">
            <div class="large">Skills Used</div>
            Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern, JUnit, Validation Testing, Teamwork
        </div>
        <br />
        <br />

        <div class="large">Videos</div>
        Video below shows you a small demo of the project.
        <br />
        It shows a user can switch modes, add/edit shapes on board and connect two shapes.
         <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Gizmo.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>

    </div>
</asp:Content>
