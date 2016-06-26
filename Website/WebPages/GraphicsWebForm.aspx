<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GraphicsWebForm.aspx.cs" Inherits="Website.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../StyleSheets/GraphicsStyleSheet.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="cont">
    </div>
    <div class="large">Description</div>
    <div class="mainIntroduction">
        This page contains 2 Graphic projects I completed during my 3rd Year of University. 
        <br />
        <br />
    </div>
    <div id="MainFlag">
        <div id="Flag">
            <div class="large">Flag Project</div>
            <div class="introduction">
                This project involved creating a nation flag using the Java Graphics Library. Main challenge was resizing the flag image when a user resizes the flag window. The height and width of the flag has to be the same ratio. Download the jar and check it out yourself!
        <br />
                <br />
            </div>

            <div class="Skills">
                <div class="large">Skills Used</div>
                Technology Used: Java - Object Oriented, Graphics Library, Maths Skills
            </div>

            <div class="Download">
                <div class="large">Download Runnable Jar File</div>
                <a href="..\Jars\FlagOb.jar"><span>Download here</span></a>
            </div>
        </div>

        <div id="FlagImage">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Flag.PNG" />

        </div>
    </div>

    <div id="MainWatch">
        <div id="Watch">
            <div class="large">Watch Project</div>
            <div class="introduction">
                This project involved creating a watch and using Threads to tick the clock per second. I choose to make the rolex watch which is challenging. Main challenge I faced was getting the clock animation working.
        Clock also has a stopwatch feature. 
        <br />
                <br />
            </div>

            <div class="Skills">
                <div class="large">Skills Used</div>
                Technology Used: Java - Object Oriented, Graphics Library, Maths Skills
            </div>

                        <div class="large">Instructions</div>
            <div class="mainIntroduction">
                How to use the stopwatch:
             <ul>
                 <li>Press p: To start the stopwatch.</li>
                 <li>Press o: To stop the stopwatch.</li>
                 <li>Press q: To reset the stopwatch.</li>
             </ul>
            </div>

            <div class="Download">
                <div class="large">Download Runnable Jar File</div>
                <a href="..\Jars\WatchOb.jar"><span>Download here</span></a>
            </div>
        </div>
        <div id="WatchImage">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Watch.PNG" />

        </div>
    </div>

</asp:Content>
