<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login">
        <div class="login-top">
		<h1 style="text-transform:none";>Enter Payment Details</h1>
            <div>
            <asp:HiddenField ID="Payx" runat="server" />
            <asp:RadioButton ID="Cash" Text="<img src=css/images/Cash600x400png.png height=100px width=150px/>" runat="server" AutoPostBack="true" OnCheckedChanged="Cash_CheckedChanged" GroupName="PAyment" />
            <asp:RadioButton ID="Card" Text="<img src=css/images/Payment600x400.png height=100px width=150px />" runat="server" AutoPostBack="true" OnCheckedChanged="Card_CheckedChanged" GroupName="PAyment" />
            <br />
             </div>
            <br />
            <br />
        <asp:TextBox ID="CardNo" runat="server" placeholder="Card Number (not required for Cash on Delivery)"></asp:TextBox>
            <br />
        <asp:TextBox ID="BankName" runat="server" placeholder="Bank Name (not required for Cash on Delivery) "></asp:TextBox>
	    </div>
        <div class="forgot" style="margin-top:75px;">
            <asp:Button ID="PayNow" runat="server" Text="Proceed" OnClick="PayNow_Click" />
        </div>
        
	</div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="footer">
                <div class="left_footer">
                    <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="#">contact us</a>
                </div>
                <div class="center_footer">
                        
                </div>
                <div class="right_footer">
                <img src="css/images/websitebasket.png" alt="" width="100" height="100" />
                 </div>
            </div>
</asp:Content>

