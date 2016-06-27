<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SkillsWebForm.aspx.cs" Inherits="Website.WebForm2" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\SkillsStyleSheet.css" />
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
            During my University Years and at home I have learnt many skills. This Page mentions most of the skills I have learnt.
        </div>
        <div id="skills">
            Java
            <ul class="skillsul">
                <li>Object Oriented Principless</li>
                <li>MVC</li>
                <li>Graphical User Interfaces(Swing)</li>
                <li>Java Graphics Library</li>
                <li>Lightwight Java game Library(LWJGL)</li>
                <li>Some design patterns(Observer and Strategy)</li>
            </ul>
            C# .NET
            <ul class="skillsul">
                <li>Object oriented</li>
                <li>Microsoft SQL Databases</li>
            </ul>
            Website Development Skills
            <ul class="skillsul">
                <li>ASP.NET</li>
                <li>MySQL</li>
                <li>HTML5</li>
                <li>CSS3</li>
                <li>Javascript</li>
                <li>PHP</li>
            </ul>
            Testing
            <ul class="skillsul">
                <li>JUnit(Java)</li>
                <li>Validation Testing</li>
            </ul>
            Strong Math Skills
        </div>
    </div>
    </div>
</asp:Content>
