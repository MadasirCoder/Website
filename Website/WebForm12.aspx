<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="Website.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\FootballTableStyleSheet.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <div id="center">
        <div id="main">
            <div id="Football">
                    <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" BorderColor="#3333CC" BorderStyle="Dashed" Height="131px" Width="466px" BackColor="White">
                        <EditRowStyle HorizontalAlign="Center" />
                        <HeaderStyle Font-Bold="True" />
                    </asp:GridView>

                <div id="input">
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" Font-Bold="True" Width="150px">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="3" ToolTip="Home Goals" Width="25px" Font-Bold="True"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="   vs" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="3" ToolTip="Home Goals" Width="25px" Font-Bold="True"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" Width="150px">
                    </asp:DropDownList>
                    <br />
                </div>

                <div id="button">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter Result" Font-Bold="True" />

                </div>

            </div>

            <div id="side">
                <div id="addTeam">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Add a Team" />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Team Name:" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" MaxLength="20"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" OnClick="Button4_Click" Text="Add Team" Visible="False" />
                </div>
                <div id="deleteTeam">
                    <asp:Button ID="Button5" runat="server" OnClick="showDeleteComponents" Text="Delete a Team" Font-Bold="True" />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Team Name:" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" MaxLength="20"></asp:TextBox>
                    <asp:Button ID="Button6" runat="server" Font-Bold="True" OnClick="deleteTeam" Text="Delete Team" Visible="False" />
                </div>
                <div id="resetButton">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="Reset Table" />
                </div>

                <div id="box">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Recent Match"></asp:Label>
                    <br />
                    <asp:Label ID="info" runat="server" Font-Bold="True"></asp:Label>

                </div>
            </div>


        </div>
    </div>
</asp:Content>
