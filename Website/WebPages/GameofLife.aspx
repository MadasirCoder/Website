<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameofLife.aspx.cs" Inherits="Website.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\GameofLifeStyleSheet.css" />
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
            For my final year dissertation, I created a game called Conways Game of Life. This page contains information about the game and videos of the game itself.
        </div>
        <br />
        <div class="large">About the game</div>
        <div class="introduction">
            Conway’s game of Life is a 2D cellular automaton. It isn’t a game in conventional sense. It has no players and there is no winning and losing. The only interaction a user has is when the game is in its initial state. However, it is an interesting game to watch as attractive patterns are formed during run time.
            The game has two states, alive and dead. Normally alive represents black cells and white represents dead cells. This project was about creating the game of life and taking into account that the game has an infinite number of grid cells. As computer memory is limited and going through each cell to find out if it’s going to be alive or dead in the next move of the game is impossible since it’s infinite. 
            Developing the right algorithm for finding out what cells are alive and dead in the next generation was one of the main success in this project.
            Other variations of Game of Life has also been implemented in this project. The normal game has grid of square cells, the new variation have triangular cells instead of square cells.
            <br />
            <br />
            For more information about the game, visit the 
            <asp:HyperLink ID="HyperLink6" Target="_blank" runat="server" ForeColor="#9900CC" NavigateUrl="https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life">Wiki</asp:HyperLink>
            &nbsp;page of the game.
            <br />
            <br />
        </div>
        <div class="large">Rules</div>
        In the normal square verion, each Square cell has 8 neighbours which are horizontally, vertically, or diagonally adjacent to the cell. 
        <br />
        A cell can survive if it has 2 or 3 alive neighbours around it.
        <br />
        A dead cell can become alive if it has exactly 3 alive neighbours. 
        <br />
        <br />
        <div id="Skills">
            <div class="large">Skills Used</div>
            Technology Used: Java - Object Oriented, GUI(Swing), MVC, Oberver Pattern, Strategy Pattern, JUnit
        </div>

        <div class="large">Two modes</div>
        The game has two modes, run mode and build mode.
        <div id="run">
            In run mode, a user can:
         <ul>
             <li>Run/Stop game.</li>
             <li>Move around the grid during runtime</li>
             <li>Check statistics.</li>
             <li>Set up a custom number of steps.</li>
             <li>Change the speed.</li>
             <li>Move back in game.</li>
             <li>Remove the gridlines</li>
         </ul>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/RunMode.PNG" />
        </div>
        <br />
        <div id="build">
            In build mode, a user can:
         <ul>
             <li>Add/Delete alive cells to the game.</li>
             <li>Add already made patterns.</li>
             <li>Change the shape and colour of an alive cell.</li>
             <li>Clear the board.</li>
             <li>Change the rules.</li>
         </ul>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/BuildMode.PNG" />
        </div>
        <br />
        <br />
        <div class="large">Videos</div>
        The video's only shows the game board. The menu has been taken out.
        <br />
        <div class="small">Gosper glider gun</div>
        A configuration that creates glider shapes non-stop. In this video I show the remove gridline feature and the shapes travelling in the grid.
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Gosper Glider.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Modified rules</div>
        A change of rules where a alive call can survive with 1 alive neighbour or a dead cell can become alive if it has 1 alive neighbour. Speed of the game has been increased to max.
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/GOL 11.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Univeral Grid Movement</div>
        This video shows games universal grid movment. It gives you an unlimited feel. You can travel anywhere on board. Follow a glider(Travelling shape) forever. 
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/GOL Grid Movement.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Scottish Game of Life!</div>
        You can change the shape and colour of the Square cells. 
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Scot.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <div class="small">Wall of death!</div>
        This video shows fixed cells(red coloured). These cells don't count as a neighbour and will not change colour.
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/GOL Wall of death.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Virus</div>
        Changed the rule so that any number of alive neighbours(not 0) around a cell can turn the cell alive or stay alive. 
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/GOL Virus.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Triangle Version</div>
        Triangle version of game of life with each triangle cell has 12 neighbours. 
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Triangle Normal Rules.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
        <div class="small">Small Triangle Version</div>
        Another Triangle version of game of life except each triangle cell has 14 neighbours. 
        <br />
        <br />
        <video width="460" height="380" controls="">
            <source src="Videos/Small Triangle Version.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
        <br />
        <br />
    </div>

</asp:Content>
