<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImageWebForm.aspx.cs" Inherits="Website.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Button ID="Button2" Text="back to images" runat="server" onclick="Button1_Click" />
<br /><br />
<asp:Image ID="Image1"  runat="server" />
<br /><br />
<asp:Button ID="Button1" Text="Back to images" runat="server" onclick="Button1_Click" />
</asp:Content>
