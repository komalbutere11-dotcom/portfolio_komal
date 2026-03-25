<%@ Page Title="Contact" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="portfolio.Contact" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

<style>
.form-box {
    max-width: 450px;
    margin: 50px auto;
    background: #1a1a1a;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
}

.form-box h2 {
    text-align: center;
    margin-bottom: 20px;
}

/* Fix for ASP.NET TextBox */
.form-box input,
.form-box textarea {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
}

/* Button style */
.btn-submit {
    width: 100%;
    background: #00adb5;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn-submit:hover {
    background: #007b83;
}

/* Success message */
#<%= lblMsg.ClientID %> {
    display: block;
    margin-top: 10px;
    color: lightgreen;
    text-align: center;
}
</style>

<div class="form-box">
    <h2>Contact Me</h2>

    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>

    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>

    <asp:TextBox ID="txtMsg" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Your Message"></asp:TextBox>

    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn-submit" OnClick="btnSubmit_Click" />

    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</div>

</asp:Content>
