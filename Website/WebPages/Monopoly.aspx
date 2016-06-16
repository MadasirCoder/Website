<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Monopoly.aspx.cs" Inherits="Website.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\MonopolyStyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div class="large">Description</div>
        <div id="introduction">
            Monopoly transacation tool is a way to play monopoly without the use of physcial cash or the card electronic system that some monopoly editions comes with now. Its a easy fast click system and gives users/players good feedback when transcations occur.
            <br />
            <br />
            Note: This application was developed using my family rules which differ from other monopoly rules. The new rules don&#39;t change the game too much. The list of rules are at the bottom of the page.
        </div>

        <br />
        <br />
        <div id="Skills">
            <div class="large">Skills Used</div>
            Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern
        </div>

        <div id="Download">
            <div class="large">Download Runnable Jar File</div>
            <a href="..\Jars\Monopoly.jar"><span>Download here</span></a>
        </div>

        <div class="large">Pictures</div>
        <div id="panel">
            <asp:Panel ID="Panel1" runat="server" BorderColor="Blue" BorderStyle="Dashed">
            </asp:Panel>
        </div>

        <div id="rules">
            <div class="large">Rules</div>
            1) If a player lands on the Income Tax or Super Tax tile, he/she needs to put the tax money on the free parking.<br />
            2) If a player lands on the Free Parking Tile, he/she will collect the whatever money lying there at that period.<br />
            3) There&#39;s no Auctions in this game. If a player doesn&#39;t want to buy the property, then the game simply moves to the next players turn to roll the dice.<br />
            4) The &quot;Get out of Jail Free Card&quot; simply adds 50 cash to the players account.<br />
            5) If a player goes to jail, he/she can pay 50 cash to get out rather than waiting 3 turns.<br />
            6) Taking down a property gives you full value. For example, taking down Mayfair Hotel will give you 2,000 cash.&nbsp;&nbsp;    
        </div>
    </div>
</asp:Content>
