<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;">
        <div style="width:30%; float:left;"> 
            <img style="padding-left:50px;margin-top:80px;" alt="" src="/product_images/samsung-galaxy-s6.jpgSamsungGalaxyS7.jpg" />
            <div id="verticle-line"></div>
        </div>
        <div style="width:70%;float:left;">
            <h1 style="float:left;">Product name</h1>
            <p style="margin-top:100px;text-align:left;font-family:Candara;font-size:18px"> 
                Desciption 
                sacjaschjkahdcikadhvcdvfb
                dsvbfbfb <br /> <br />
                Price:
            </p>
            <br /> <br />
            <div class="forgot">
            <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
        </div>
    </div>
    </div>
</asp:Content>

