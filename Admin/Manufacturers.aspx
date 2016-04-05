<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Manufacturers.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="&lt;h2&gt;&lt;center&gt;Welcome to Manufacturer Details Table &lt;/center&gt;&lt;/h2&gt;" ></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br /> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Name"></asp:RequiredFieldValidator>
    <asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="MobileNo"></asp:RequiredFieldValidator>
    <asp:TextBox ID="MobileNo" placeholder="Mobile Number" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="EmailID"></asp:RequiredFieldValidator>
    <asp:TextBox ID="EmailID" placeholder="Email ID" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="WebsiteURL"></asp:RequiredFieldValidator>
    <asp:TextBox ID="WebsiteURL" placeholder="Website URL" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="Address"></asp:RequiredFieldValidator>
    <asp:TextBox ID="Address" placeholder="Address" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="COD"></asp:RequiredFieldValidator>
    <asp:TextBox ID="COD" placeholder="Cash On Delivery Y/N" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
    &nbsp;&nbsp;
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
</asp:Content>

