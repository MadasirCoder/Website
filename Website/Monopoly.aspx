<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Monopoly.aspx.cs" Inherits="Website.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="MonopolyStyleSheet.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id ="cont">
        <div id ="introducation">
            <p>Description</p>
            <p>Monopoly transcation tool is a way to play monopoly without the use of physcial cash or the card electronic system that some monopoly editions comes with now. Its a easy fast click system and gives users/players good feedback when transcations occur.</p>
            <p>Note: This application was developed using the my family rules which differ from other monopoly rules. The list of rules are at the bottom of the page.</p>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
        </div>
    </div>
</asp:Content>
