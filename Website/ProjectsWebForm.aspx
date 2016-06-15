<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectsWebForm.aspx.cs" Inherits="Website.WebForm3" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="ProjectsStyleSheet.css">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div id="introduction">
            <p>This page contains pictures or links of the projects I have completed.</p>
        </div>
        <div id="Monopoly">
        <h2>Monopoly Transaction Tool</h2>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/monopoly.PNG" href="Monopoly.aspx"></asp:HyperLink>
            </p>
            <p>Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern</p>
         </div>
    </div>
</asp:Content>
