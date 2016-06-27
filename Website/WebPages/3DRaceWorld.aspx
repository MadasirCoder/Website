<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="3DRaceWorld.aspx.cs" Inherits="Website.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\RaceStyleSheet.css" />
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
            This project involved creating a 3D Race Track using Light Weight Java Game(LWJGL) Library with 3 other students.
              <br />
        </div>
        <br />
        <div class="large">Features</div>
        <ul>
            <li>Long Monano style track.</li>
            <li>Randomnized Building loctions around track.</li>
            <li>Advanced looking buildings.</li>
            <li>Crash detection to barriers and buildings.</li>
            <li>Track Tunnel and sea.</li>
            <li>Fractal tree looking trees.</li>
        </ul>
        <br />
        <br />
        <div class="Skills">
            <div class="large">Skills Used</div>
            Technology Used: Java - Object Oriented, LWJGL, 3D Graphics, Teamwork
        </div>
        <br />
        <br />

        <div class="large">Videos</div>
        Video below shows you a demo of the full track and the features mentioned above.
         <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Race.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
    </div>
</asp:Content>
