<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;">
    <div style="width:55%; float:left;">
        <br />
        <h1 style="text-transform:none;"> User Profile </h1>
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Name : </span>
        <asp:Label ID="Name" runat="server" Text="Aman Sharma" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Gender :  </span>
        <asp:Label ID="Gender" runat="server" Text="Male" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Email ID :  </span>
        <asp:Label ID="email" runat="server" Text="aman.sharma@gmail.com" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Address:  </span>
        <asp:Label ID="Address" runat="server" Text="Shiv Nadar University, Dadri" Font-Size="Medium"></asp:Label> <br /><br />
        <span style="font-family:Candara;font-size:25px;font-weight:25px; margin-left:15px;"> Mobile: </span>
        <asp:Label ID="Mobile" runat="server" Text="9966335522" Font-Size="Medium"></asp:Label> <br /><br />
    
        
    </div>
    <div style="width:45%; float:right;">
    <img src="css/images/Avatar.png " height="600px" width="600px"/> 
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

