<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="css/generic.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sliderFrame">
        <div id="slider">
            <img src="images/slider1.jpg" alt="" />
            <img src="images/slider2.jpg" alt="" />
           
           	<img src="images/slider3.jpg" alt="" />
            
            <img src="images/slider4.jpg" alt="" />
            <img src="images/slider5.jpg" alt="" />
        </div>     
    </div>
    

</asp:Content>

