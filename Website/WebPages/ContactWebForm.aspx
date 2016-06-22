<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactWebForm.aspx.cs" Inherits="Website.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="..\StyleSheets\ContactStyleSheet.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <div id="intro">
        Please enter details below:
        <br />
        Name/Company:<br />
        <asp:TextBox ID="name" runat="server"  Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ControlToValidate="name"  ErrorMessage="No Name/Company entered." Text="*"></asp:RequiredFieldValidator>
        <br />
        Your Email:<br />
        <asp:TextBox ID="email" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic"  runat="server" ControlToValidate="email"  ErrorMessage="No email entered." Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" Text="*">
                    </asp:RegularExpressionValidator>
        <br />
        Message:<br />
        <asp:TextBox ID="message" runat="server" Height="200px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ControlToValidate="message"  ErrorMessage="No message entered." Text="*"></asp:RequiredFieldValidator>

        <br/>
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" UseSubmitBehavior="False" />
        <br />
        <asp:Label ID="lblMessage"  runat="server" Font-Bold="true"> </asp:Label>
        <br />
         <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
        <br/>
        </div>


</asp:Content>
