<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomeWebForm.aspx.cs" Inherits="Website.WebForm1" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\SkillsStyleSheet.css"/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/PeriodicTable.jpg" ImageAlign="Middle" horizontalAlign="Middle" Height="600px" Width="900px"/>
    
</asp:Content>
