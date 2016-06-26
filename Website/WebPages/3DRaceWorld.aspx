<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="3DRaceWorld.aspx.cs" Inherits="Website.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\RaceStyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
        <div class="large">Description</div>
        <div class="introduction">
            This project involved creating a 3D Race Track using Light Weight Java Game(LWJGL) Library in a team.
              <br />
            Though a few elements still needed to complete, project achieved a high mark. 
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

                    <div class="large">Instructions</div>
            <div class="mainIntroduction">
                How to play the game:
             <ul>
                 <li>Press up arrow: To start/increase speed.</li>
                 <li>Press down arrow: To stop/decrease.</li>
                 <li>Press left arrow: To turn left.</li>
                 <li>Press right arrow: To turn right.</li>
             </ul>
            </div>
        <div class="Download">
                <div class="large">Download Runnable Jar File</div>
                <a href="..\Jars\WatchOb.jar"><span>Download here</span></a>
            </div>
    </div>
</asp:Content>
