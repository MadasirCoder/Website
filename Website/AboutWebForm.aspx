<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutWebForm.aspx.cs" Inherits="Website.WebForm4" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="AboutStyleSheet.css">
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div id="introduction">
            Hello, Thanks for visiting my website.
        </div>
        <h3>About me?</h3>
        <div id="who">
            I have graduated in computer science in July 2015 at University of Strathclyde and obtained a 2.1.
              
        </div>
        <h3>Why make this?</h3>
        <div id="about">
            I made this website as a personal project as a way to start building my skills on ASP.NET and web development. However, I am using this oppurtunity to add my other projects on it. 
            I am still unemployed and looking for a Graduate Oppurtunity in Scotland. Potential Employers can view this and check if they are interested.
        </div>
    </div>
</asp:Content>
