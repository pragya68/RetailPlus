<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="LabelWelcome" runat="server" Text="&lt;h2&gt;&lt;center&gt;Welcome to ProductInfo table&lt;/center&gt;&lt;/h2&gt;"></asp:Label>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ManufacturerID" runat="server" placeholder="ManufacturerID"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="*" ControlToValidate="ManufacturerID" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ProductName" runat="server" placeholder="ProductName"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="*" ControlToValidate="ProductName" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Description" TextMode="multiline" Width="400px" Rows="5" runat="server" placeholder="Description"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="*" ControlToValidate="Description" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Weight" runat="server" placeholder="Weight"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="*" ControlToValidate="Weight" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Colour" runat="server" placeholder="Colour"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ErrorMessage="*" ControlToValidate="Colour" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="AvailableUnits" runat="server" placeholder="AvailableUnits"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ErrorMessage="*" ControlToValidate="AvailableUnits" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="MSRP" runat="server" placeholder="MSRP"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ErrorMessage="*" ControlToValidate="MSRP" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Discount" runat="server" placeholder="Discount"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ErrorMessage="*" ControlToValidate="Discount" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ProductType" runat="server" placeholder="ProductType"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ErrorMessage="*" ControlToValidate="ProductType" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Image" runat="server" Text="Product-Image:"></asp:Label>
    <asp:FileUpload ID="ImageUpload" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="save" runat="server" Text="Save"  ValidationGroup="Products" OnClick="save_Click" />
    <asp:Button runat="server" ID="btnclear" Text="Clear"   />&nbsp;&nbsp;
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

