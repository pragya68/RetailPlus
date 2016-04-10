<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;">
    <div style="width:55%; float:left;">
        <br />
        <h1 style="text-transform:none;"> Your order has been sucessfully placed! </h1>
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Dear,  </span>
        <asp:Label ID="Name" runat="server" Text="" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;margin-left:15px;font-weight:25px;"> Your order will be shipped to : </span>
        <asp:Label ID="Address" runat="server" Text="" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;margin-left:15px;font-weight:25px;"> Before: </span>
        <asp:Label ID="ShippingDate" runat="server" Text="" Font-Size="Medium"></asp:Label> <br />
    </div>
    <div style="width:45%; float:right;">
    <img src="css/images/shipping750x750_1.png " height="600px" width="600px"/> 
    </div>
    </div>
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

